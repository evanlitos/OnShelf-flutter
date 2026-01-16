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

import 'package:image_picker/image_picker.dart';

Future<FFUploadedFile> pickFrontCameraImage() async {
  // Add your function code here!
  //  final picker = ImagePicker();
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(
    source: ImageSource.camera,
    preferredCameraDevice: CameraDevice.front,
    imageQuality: 90,
    maxWidth: 1000,
    maxHeight: 1000,
  );

  if (pickedFile != null) {
    final bytes = await pickedFile.readAsBytes();
    return FFUploadedFile(
      name: pickedFile.name,
      bytes: bytes,
    );
  } else {
    return FFUploadedFile(
        bytes: Uint8List(0)); // Retorna vacío si no se tomó foto
  }
}
