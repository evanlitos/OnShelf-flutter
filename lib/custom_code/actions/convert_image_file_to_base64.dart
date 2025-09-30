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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'dart:convert';

Future<String> convertImageFileToBase64(FFUploadedFile imageFile) async {
  List<int>? imageBytes = imageFile.bytes;

  if (imageBytes != null && imageFile.name != null) {
    // Obtener la extensión del archivo de manera segura
    String? fileExtension = imageFile.name?.split('.').last;

    // Determinar el tipo de imagen para el prefijo
    String imageType = 'image/png'; // Default tipo de imagen

    if (fileExtension == 'jpg' || fileExtension == 'jpeg') {
      imageType = 'image/jpeg';
    } else if (fileExtension == 'gif') {
      imageType = 'image/gif';
    } else if (fileExtension == 'bmp') {
      imageType = 'image/bmp';
    }
    // Aquí puedes agregar más tipos de imágenes si es necesario

    // Convertir la imagen a base64
    String base64Image = base64Encode(imageBytes);

    // Agregar el prefijo al string base64
    return 'data:$imageType;base64,$base64Image';
  }

  return ""; // En caso de que el archivo o los bytes sean null
}
