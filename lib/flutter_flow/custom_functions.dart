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
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime parsePostgresTimestamp(String timestamp) {
  List<DateFormat> formats = [
    DateFormat(
        "yyyy-MM-dd HH:mm:ss.SSSSSSz"), // timestamptz with microseconds and timezone
    DateFormat("yyyy-MM-dd HH:mm:ssz"), // timestamptz
    DateFormat("yyyy-MM-dd HH:mm:ss.SSSSSS"), // timestamp with microseconds
    DateFormat("yyyy-MM-dd HH:mm:ss"), // timestamp
    DateFormat("HH:mm:ss.SSSSSSz"), // timetz with microseconds
    DateFormat("HH:mm:ssz"), // timetz
    DateFormat("HH:mm:ss.SSSSSS"), // time with microseconds
    DateFormat("HH:mm:ss"), // time
    DateFormat("yyyy-MM-dd"), // date
  ];

  for (var format in formats) {
    try {
      return format.parse(timestamp, true);
    } catch (e) {
      // Continue trying other formats
    }
  }

  // If none of the formats match, throw an error or handle accordingly
  print('Could not parse the date/time: $timestamp');
  throw FormatException('Invalid date/time format');
}

List<String> splitBarcodes(String barcodesGroup) {
  // Primero se reemplaza 'brez izbire' con un marcador único
  var tempString = barcodesGroup.trim().replaceAll('brez izbire', '\u{FFFF}');

  // Se dividen los elementos por espacios y saltos de línea
  var splitList = tempString.split(RegExp(r'\s+|\n+'));

  // Se reemplaza de nuevo el marcador único con 'brez izbire'
  return splitList.map((s) => s.replaceAll('\u{FFFF}', 'brez izbire')).toList();
}

int sumList(List<int> integerList) {
  int suma = 0;
  for (int numero in integerList) {
    suma += numero;
  }
  return suma;
}

String joinStrings(List<String> strings) {
  var filteredStrings = strings.where((string) => string != '/').toList();

  return filteredStrings.join(' ');
}

String formatDateTimeForPostgres(DateTime dateTime) {
  return dateTime.toUtc().toIso8601String();
}

List<String> noRepeated(List<String> duplicatedList) {
  return duplicatedList.toSet().toList();
}

List<String> intToStringList(List<int> intList) {
  List<String> stringList = intList.map((i) => i.toString()).toList();
  return stringList;
}

DateTime stringToDateTime(String timeString) {
  DateTime now = DateTime.now();

  // Dividir el string 'HH:mm' para obtener las horas y minutos
  List<String> parts = timeString.split(':');
  if (parts.length != 2) {
    throw FormatException("El string debe estar en formato HH:mm");
  }

  // Convertir las partes en enteros
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]);

  // Crear un nuevo objeto DateTime con la fecha actual y la hora especificada
  return DateTime(now.year, now.month, now.day, hour, minute);
}

String toString(int intValue) {
  return intValue.toString();
}
