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
import 'package:no_screenshot/no_screenshot.dart';

// Asegúrate de tener acceso a FFAppState() y BuildContext con los auto-imports de FlutterFlow.

class _InactivityManager with WidgetsBindingObserver {
  static final _InactivityManager _i = _InactivityManager._();
  _InactivityManager._();
  factory _InactivityManager() => _i;

  Timer? _idleTimer;
  bool _showingDialog = false;

  // ✅ Última vez que hubo actividad del usuario (cuando empieza/reinicia el contador)
  DateTime? _lastActivityAt;

  // Context más reciente (validado con mounted antes de usar)
  BuildContext? _lastContext;

  // Configuración vigente
  int _idleSeconds = 60;
  int _graceSeconds = 10;

  bool _observerAttached = false;

  // Helpers
  String _fmt(DateTime dt) => DateFormat('yyyy-MM-dd HH:mm:ss').format(dt);
  bool _isAlive(BuildContext? ctx) => ctx is Element && ctx.mounted;

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
    required DateTime endAt, // ⬅️ momento real del envío
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

  void _attachObserverIfNeeded() {
    if (!_observerAttached) {
      WidgetsBinding.instance.addObserver(this);
      _observerAttached = true;
    }
  }

  void _detachObserverIfNeeded() {
    if (_observerAttached) {
      WidgetsBinding.instance.removeObserver(this);
      _observerAttached = false;
    }
  }

  // 👉 Para marcar actividad manual (por ejemplo, en un onTap global)
  void registerActivity() {
    _lastActivityAt = DateTime.now();
    print("📝 registerActivity at ${_fmt(_lastActivityAt!)}");
  }

  void stop() {
    print("🛑 STOP: cancelando idleTimer");
    _idleTimer?.cancel();
    _idleTimer = null;
    _detachObserverIfNeeded();
  }

  void startOrReset({
    required BuildContext context,
    int idleSeconds = 60, // ⏱ fijo
    int graceSeconds = 10, // ⏳ fijo
  }) {
    _idleSeconds = idleSeconds;
    _graceSeconds = graceSeconds;
    _lastContext = context;

    _attachObserverIfNeeded();

    // ✅ Registrar el "inicio" del conteo justo cuando se reinicia por actividad
    _lastActivityAt = DateTime.now();
    print(
        "▶️ Counter (re)started at ${_fmt(_lastActivityAt!)} (idle=$_idleSeconds, grace=$_graceSeconds)");

    _scheduleIdleTimer(remainingSeconds: _idleSeconds);
  }

  void _scheduleIdleTimer({required int remainingSeconds}) {
    _idleTimer?.cancel();
    _idleTimer = Timer(Duration(seconds: remainingSeconds), () async {
      final ctx = _lastContext;
      if (!_isAlive(ctx)) {
        print("⚠️ No context available/alive for inactivity flow.");
        return;
      }
      await _onInactivity(ctx!);
    });
  }

  Future<void> _onInactivity(BuildContext context) async {
    print(
        "⏰ Inactivity reached (since ${_fmt(_lastActivityAt ?? DateTime.now())}).");

    if (_showingDialog) {
      print("⚠️ Alert already open, skipping.");
      return;
    }
    _showingDialog = true;

    if (!_isAlive(context)) {
      print("⚠️ Context unmounted before dialog.");
      _showingDialog = false;
      return;
    }

    // 1) Grace alert (no envía todavía) — SIN Timer.periodic
    final end = DateTime.now().add(Duration(seconds: _graceSeconds));
    final graceConfirmed = await showDialog<bool>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: false,
      builder: (ctx) {
        if (!_isAlive(ctx)) return const SizedBox.shrink();

        Stream<int> countdownStream() async* {
          while (true) {
            final remain = end.difference(DateTime.now()).inSeconds;
            if (remain <= 0) {
              yield 0;
              break;
            }
            yield remain;
            await Future.delayed(const Duration(seconds: 1));
          }
        }

        return StreamBuilder<int>(
          stream: countdownStream(),
          initialData: _graceSeconds,
          builder: (ctx2, snap) {
            final remaining = (snap.data ?? 0).clamp(0, _graceSeconds);
            if (remaining == 0 &&
                Navigator.of(ctx2, rootNavigator: true).canPop()) {
              Future.microtask(() {
                if (_isAlive(ctx2))
                  Navigator.of(ctx2, rootNavigator: true).pop(true);
              });
            }
            return AlertDialog(
              title: const Text('Are you still there?'),
              content: Text(
                  'We detected inactivity. In ${remaining}s you will be asked for a reason.'),
              actions: [
                TextButton(
                  onPressed: () {
                    if (_isAlive(ctx2))
                      Navigator.of(ctx2, rootNavigator: true).pop(true);
                  },
                  child: const Text('Continue'),
                ),
              ],
            );
          },
        );
      },
    );

    if (!_isAlive(context)) {
      _showingDialog = false;
      return;
    }

    // 2) Reason dialog (solo 'Lunch break' y 'Other', máx 250 chars)
    String? selectedReason;
    try {
      selectedReason = await showDialog<String>(
        context: context,
        useRootNavigator: true,
        barrierDismissible: false,
        builder: (ctx) {
          if (!_isAlive(ctx)) return const SizedBox.shrink();

          int picked = 0; // 0 = Lunch break, 1 = Other
          final otherCtrl = TextEditingController();

          return StatefulBuilder(
            builder: (ctx2, setState) {
              if (!_isAlive(ctx2)) return const SizedBox.shrink();

              final isOther = picked == 1;
              final otherText = otherCtrl.text.trim();
              final canSubmit =
                  (picked == 0) || (isOther && otherText.isNotEmpty);

              return AlertDialog(
                title: const Text('Select reason for delay'),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RadioListTile<int>(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Lunch break'),
                        value: 0,
                        groupValue: picked,
                        onChanged: (v) => setState(() => picked = v ?? 0),
                      ),
                      RadioListTile<int>(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Other'),
                        value: 1,
                        groupValue: picked,
                        onChanged: (v) => setState(() => picked = v ?? 1),
                      ),
                      if (isOther)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextField(
                            controller: otherCtrl,
                            autofocus: true,
                            maxLines: 3,
                            maxLength: 250, // ⬅️ límite 250
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              labelText: 'Enter reason',
                              hintText: 'Describe the reason (max 250 chars)',
                              border: OutlineInputBorder(),
                              counterText: '', // oculto el contador por defecto
                            ),
                            onChanged: (_) {
                              if (_isAlive(ctx2)) setState(() {});
                            },
                          ),
                        ),
                      if (isOther)
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "${otherCtrl.text.length}/250",
                            style: Theme.of(ctx2).textTheme.bodySmall,
                          ),
                        ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: canSubmit
                        ? () {
                            final value = (picked == 0)
                                ? 'Lunch break'
                                : otherCtrl.text.trim();
                            if (_isAlive(ctx2)) {
                              Navigator.of(ctx2, rootNavigator: true)
                                  .pop(value);
                            }
                          }
                        : null,
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
      final endAt = DateTime.now(); // ⏱️ ESTE ES EL "TIEMPO FINAL" REAL
      await _sendInactivityReason(
        reason: selectedReason,
        startAt: startAt,
        endAt: endAt,
      );

      if (_isAlive(context)) {
        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
            SnackBar(content: Text('Recorded: $selectedReason')));
      }
    } else {
      print("ℹ️ Reason dialog canceled.");
    }

    // 4) Reiniciar monitoreo
    final ctx = _lastContext;
    if (_isAlive(ctx)) {
      print("🔁 Restarting inactivity monitoring…");
      startOrReset(
        context: ctx!,
        idleSeconds: _idleSeconds,
        graceSeconds: _graceSeconds,
      );
    }
  }

  // 🔄 Manejo del ciclo de vida para que el tiempo “corra” aunque la app esté en background
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final now = DateTime.now();

    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      // Cancelamos el timer, pero NO perdemos _lastActivityAt
      _idleTimer?.cancel();
      _idleTimer = null;
      print(
          "⏸️ App background. Timer cancelado, conservaré último activity=${_fmt(_lastActivityAt ?? now)}");
    }

    if (state == AppLifecycleState.resumed) {
      print("▶️ App resumed");
      // Al volver, calculamos cuánto tiempo pasó desde la última actividad
      final last = _lastActivityAt ?? now;
      final elapsed = now.difference(last).inSeconds;
      final ctx = _lastContext;

      print(
          "⏱️ Elapsed since last activity: ${elapsed}s (idle threshold=$_idleSeconds)");

      if (!_isAlive(ctx)) {
        print("⚠️ No context to resume timers.");
        return;
      }

      if (elapsed >= _idleSeconds) {
        // Si ya se superó el umbral, disparamos el flujo de inactividad de inmediato
        _idleTimer?.cancel();
        _idleTimer = Timer(Duration.zero, () => _onInactivity(ctx!));
      } else {
        // Si no, reprogramamos con el tiempo restante
        final remaining = _idleSeconds - elapsed;
        _scheduleIdleTimer(remainingSeconds: remaining);
      }
    }
  }
}

final _noScreenshot = NoScreenshot.instance;

/// Acción pública SIN parámetros (tiempos fijos)
Future inactivitymanager(BuildContext context) async {
  const idleSeconds = 300;
  const graceSeconds = 10;
  await _noScreenshot.screenshotOff();
  print("📲 inactivityManager (idle=$idleSeconds, grace=$graceSeconds)");
  _InactivityManager().startOrReset(
    context: context,
    idleSeconds: idleSeconds,
    graceSeconds: graceSeconds,
  );
}
