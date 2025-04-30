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

Future<void> checkInactivityTimer() async {
  Timer.periodic(Duration(seconds: 10), (timer) async {
    DateTime lastInteraction = FFAppState().lastInteraction ?? DateTime.now();
    int inactivityMinutes =
        DateTime.now().difference(lastInteraction).inMinutes;

    if (inactivityMinutes >= 5) {
      FFAppState().inactivityDetected = true; // Marcar inactividad
    }
  });
}
