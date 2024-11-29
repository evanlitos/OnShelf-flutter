import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? returnNameMonth() {
  DateTime now = DateTime.now();
  String monthName = DateFormat('MMMM').format(now);
  return monthName;
}

List<String> daysFromWeek() {
  List<String> weekDays = [];
  DateTime now = DateTime.now();

  // Obtener el primer día de la semana (lunes)
  DateTime firstDayOfWeek = now.subtract(Duration(days: now.weekday - 1));

  for (int i = 0; i < 7; i++) {
    DateTime day = firstDayOfWeek.add(Duration(days: i));
    String formattedDay = DateFormat('EEE\nd').format(day); // Formato: Mon 7
    weekDays.add(formattedDay);
  }

  return weekDays;
}

String getDate() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('dd / MM / yyyy').format(now);
  return formattedDate;
}

String getFormattedTime() {
  DateTime now = DateTime.now();
  String formattedTime = DateFormat('hh:mm a').format(now);
  return formattedTime;
}

String? printResult(dynamic data) {
  print(data);
  return data;
}

String imagePathFromUrl(String url) {
  return "https://api.onshelf.app/" + url;
}
