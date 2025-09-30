// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
// Asegúrate de tener acceso a FFAppState() y BuildContext con los auto-imports de FlutterFlow.

class _InactivityManager {
  static final _InactivityManager _i = _InactivityManager._();
  _InactivityManager._();
  factory _InactivityManager() => _i;

  Timer? _idleTimer;
  bool _showingDialog = false;

  // ✅ Última vez que hubo actividad del usuario (cuando empieza/reinicia el contador)
  DateTime? _lastActivityAt;

  // Helpers
  String _fmt(DateTime dt) => DateFormat('yyyy-MM-dd HH:mm:ss').format(dt);

  int? _getUserId() {
    try {
      final obj = FFAppState().user.user.id;

      return obj;
    } catch (_) {
      return null;
    }
  }

  String? _getToken() {
    try {
      final obj = FFAppState().user.token;
      return obj;
    } catch (_) {
      return null;
    }
  }

  Future<void> _sendInactivityReason({
    required String reason,
    required DateTime startAt, // ⬅️ última actividad (inicio del conteo)
    required DateTime endAt, // ⬅️ momento del envío
  }) async {
    final userId = _getUserId();
    final token = _getToken();

    if (userId == null || token == null || token.isEmpty) {
      print('❌ Falta userId o token; no se envía tracking.');
      return;
    }

    final url =
        Uri.parse('https://api.onshelf.app/api/v1/app/inactivity-tracking');
    final payload = {
      'user_id': userId,
      'reason_inactivity': reason,
      // ⬇️ NOMBRES SOLICITADOS
      'started_at': _fmt(startAt),
      'finished_at': _fmt(endAt),
    };

    print('🌐 POST $url');
    print(
        '🔐 Bearer ${token.substring(0, token.length > 8 ? 8 : token.length)}…');
    print('📦 Body: ${jsonEncode(payload)}');

    try {
      final resp = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json'
        },
        body: jsonEncode(payload),
      );
      print('⬅️ [${resp.statusCode}] ${resp.body}');
      if (resp.statusCode < 200 || resp.statusCode >= 300) {
        print('⚠️ Backend error en inactivity-tracking.');
      }
    } catch (e) {
      print('❌ Error de red: $e');
    }
  }

  void stop() {
    print("🛑 STOP: cancelando idleTimer");
    _idleTimer?.cancel();
    _idleTimer = null;
  }

  void startOrReset({
    required BuildContext context,
    int idleSeconds = 60, // ⏱ fijo
    int graceSeconds = 10, // ⏳ fijo
  }) {
    final reasons = <String>[
      'Lunch break',
      'Salah',
      'Washroom',
      'Delivery',
      'Store manager called',
      'Customer support',
      'Arranging backdoor',
      'Building stand',
      'Pog non TMS',
      'Receiving delivery',
      'Facing items',
      'Arranging pallets',
      'Arranging quads',
      'Putting promo price',
      'Looking / waiting for ladder',
    ];

    // ✅ Registrar el "inicio" del conteo justo cuando se reinicia por actividad
    _lastActivityAt = DateTime.now();
    print(
        "▶️ Counter (re)started at ${_fmt(_lastActivityAt!)} (idle=$idleSeconds, grace=$graceSeconds)");

    _idleTimer?.cancel();
    _idleTimer = Timer(Duration(seconds: idleSeconds), () async {
      print(
          "⏰ Inactivity reached after $idleSeconds s (since ${_fmt(_lastActivityAt!)}).");

      if (_showingDialog) {
        print("⚠️ Alert already open, skipping.");
        return;
      }
      _showingDialog = true;

      if (!context.mounted) {
        print("⚠️ Context unmounted before dialog.");
        _showingDialog = false;
        return;
      }

      // 1) Grace alert (no envía todavía)
      int remaining = graceSeconds;
      Timer? countdown;
      try {
        await showDialog<void>(
          context: context,
          useRootNavigator: true,
          barrierDismissible: false,
          builder: (ctx) {
            return StatefulBuilder(
              builder: (ctx, setState) {
                countdown ??= Timer.periodic(const Duration(seconds: 1), (t) {
                  remaining--;
                  if (!ctx.mounted) return;
                  setState(() {});
                  if (remaining <= 0) {
                    countdown?.cancel();
                    Navigator.of(ctx, rootNavigator: true).pop();
                  }
                });

                return AlertDialog(
                  title: const Text('Are you still there?'),
                  content: Text(
                      'We detected inactivity. In ${remaining}s you will be asked for a reason.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        countdown?.cancel();
                        Navigator.of(ctx, rootNavigator: true).pop();
                      },
                      child: const Text('Continue'),
                    ),
                  ],
                );
              },
            );
          },
        );
      } finally {
        countdown?.cancel();
      }

      // 2) Reason dialog
      String? selectedReason;
      try {
        selectedReason = await showDialog<String>(
          context: context,
          useRootNavigator: true,
          barrierDismissible: false,
          builder: (ctx) {
            int picked = 0;
            return StatefulBuilder(
              builder: (ctx, setState) {
                return AlertDialog(
                  title: const Text('Select reason for delay'),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (int i = 0; i < reasons.length; i++)
                          RadioListTile<int>(
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            title: Text(reasons[i]),
                            value: i,
                            groupValue: picked,
                            onChanged: (v) => setState(() => picked = v ?? 0),
                          ),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(ctx, rootNavigator: true)
                          .pop(reasons[picked]),
                      child: const Text('Submit'),
                    ),
                  ],
                );
              },
            );
          },
        );
      } finally {
        _showingDialog = false;
      }

      // 3) Enviar solo si seleccionó un motivo
      _idleTimer?.cancel();
      _idleTimer = null;

      if (selectedReason != null) {
        final startAt = _lastActivityAt ?? DateTime.now(); // por seguridad
        final endAt = DateTime.now();
        await _sendInactivityReason(
          reason: selectedReason,
          startAt: startAt, // ⬅️ última actividad (inicio del conteo)
          endAt: endAt, // ⬅️ envío del endpoint
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Recorded: $selectedReason')),
          );
        }
      } else {
        print("ℹ️ Reason dialog canceled.");
      }

      // 4) Reiniciar monitoreo
      if (context.mounted) {
        print("🔁 Restarting inactivity monitoring…");
        startOrReset(
            context: context,
            idleSeconds: idleSeconds,
            graceSeconds: graceSeconds);
      }
    });
  }
}

/// Acción pública SIN parámetros (tiempos fijos)
Future inactivitymanager(BuildContext context) async {
  const idleSeconds = 180;
  const graceSeconds = 10;
  print("📲 inactivityManager (idle=$idleSeconds, grace=$graceSeconds)");
  _InactivityManager().startOrReset(
    context: context,
    idleSeconds: idleSeconds,
    graceSeconds: graceSeconds,
  );
}
