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

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

Future showInactivityReasonDialog(
  BuildContext context,
  DateTime startAt,
) async {
  // Helper para formatear fechas
  String _fmt(DateTime dt) => DateFormat('yyyy-MM-dd HH:mm:ss').format(dt);

  // Helper para obtener userId
  int? _getUserId() {
    try {
      return FFAppState().user.user.id;
    } catch (_) {
      return null;
    }
  }

  // Helper para obtener token
  String? _getToken() {
    try {
      return FFAppState().user.token;
    } catch (_) {
      return null;
    }
  }

  // Helper para enviar al backend
  Future<void> _sendInactivityReason({
    required String reason,
    required DateTime startAt,
    required DateTime endAt,
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

  // Validar que el contexto esté montado
  bool _isAlive(BuildContext? ctx) => ctx is Element && ctx.mounted;

  if (!_isAlive(context)) {
    print("⚠️ Context no válido");
    return;
  }

  // Mostrar el diálogo de razón
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
                          maxLength: 250,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            labelText: 'Enter reason',
                            hintText: 'Describe the reason (max 250 chars)',
                            border: OutlineInputBorder(),
                            counterText: '',
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
                            Navigator.of(ctx2, rootNavigator: true).pop(value);
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
  } catch (e) {
    print('❌ Error mostrando diálogo: $e');
    return;
  }

  // Si seleccionó una razón, enviarla al backend
  if (selectedReason != null && selectedReason.isNotEmpty) {
    final endAt = DateTime.now();
    await _sendInactivityReason(
      reason: selectedReason,
      startAt: startAt,
      endAt: endAt,
    );

    if (_isAlive(context)) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text('Recorded: $selectedReason')),
      );
    }

    print('✅ Razón registrada: $selectedReason');
  } else {
    print('ℹ️ Diálogo cancelado, no se registró nada.');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
