import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

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
    // String formattedDay = DateFormat('EEE\nd').format(day); // Formato: Mon 7
    String formattedDay = DateFormat('d').format(day); // Formato: Mon 7
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
  return /* "https://api.onshelf.app/" +*/ url;
}

bool esHoy(String day) {
  DateTime now = DateTime.now();
  List<String> weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];

  // Convertimos el día actual a abreviatura
  String todayAbbreviation = weekdays[now.weekday - 1];

  print(
      "TODAY $day - $todayAbbreviation -- ${todayAbbreviation.toUpperCase() == day.toUpperCase()}");
  // Comparamos ignorando mayúsculas/minúsculas
  return todayAbbreviation.toUpperCase() == day.toUpperCase();
}

String obtenerFechaHoraActual() {
  // Obtiene la fecha y hora actual
  final DateTime now = DateTime.now();

  // Formatea la fecha y hora
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final String formatted = formatter.format(now);

  return formatted;
}

dynamic constructSendShelf(
  ShelfsStruct shelf,
  String routeId,
  String storeId,
  int userId,
  String finishDate,
) {
  // Inicializar la lista de productos
  List<Map<String, dynamic>> products = [];

  // Verificar si el shelf contiene productos
  if (shelf.products != null) {
    for (var product in shelf.products!) {
      print(product);
      // Crear el mapa del producto en el formato requerido
      products.add({
        "product_id": product.id,
        "dam": (product.dam ?? 0).toString(),
        "exp": (product.exp ?? 0).toString(),
        "cof": (product.cof ?? 0).toString(),
        "rec": (product.rec ?? 0).toString(),
        "total": (product.dam ?? 0) + (product.exp ?? 0) + (product.rec ?? 0),
        "started_at": DateFormat('yyyy-MM-dd HH:mm:ss')
            .format(DateTime.now()), // Tiempo actual simulado
        "finished_at": DateFormat('yyyy-MM-dd HH:mm:ss')
            .format(DateTime.now().add(Duration(hours: 8))), // Fin simulado
      });
    }
  }

  // Construir el mapa final
  final Map<String, dynamic> data = {
    "route_id": routeId,
    "store_id": storeId,
    "merchandizer_id": userId,
    "planogram_id": shelf.planogramId,
    "map_canva_id": shelf.mapCanvaId,
    "img_today_planogram": 1, // Suponiendo un valor constante
    "img_main_shelf_before": 1, // Suponiendo un valor constante
    "img_main_shelf_after": 1, // Suponiendo un valor constante
    "started_at": DateFormat('yyyy-MM-dd HH:mm:ss')
        .format(DateTime.now()), // Tiempo actual
    "finished_at": finishDate, // Fecha final pasada como parámetro
    "products": products, // Lista de productos
  };

  print(data);

  return data;
}

List<String> getOrderedMonths() {
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  // Obtener el mes actual
  DateTime now = DateTime.now();
  int currentMonthIndex = now.month - 1; // El índice comienza en 0

  // Reordenar la lista de meses
  return [
    ...months.sublist(currentMonthIndex),
    ...months.sublist(0, currentMonthIndex)
  ];
}

int sumaNumeros(
  int m1,
  int m2,
  int m3,
  int m4,
  int m5,
  int m6,
  int mm,
) {
  var suma = m1 + m2 + m3 + m4 + m5 + m6 + mm;
  print("SUMA: $suma");
  return suma;
}

List<String> getOrderedMonthsCompleted() {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  // Obtener el mes actual
  DateTime now = DateTime.now();
  int currentMonthIndex = now.month - 1; // El índice comienza en 0

  // Reordenar la lista de meses
  return [
    ...months.sublist(currentMonthIndex),
    ...months.sublist(0, currentMonthIndex)
  ];
}

int stToInt(String val) {
  if (val.isEmpty) {
    return 0;
  }

  // Intentar convertir el string a un entero
  return int.tryParse(val) ?? 0;
}

String constructExpirations(dynamic prod) {
  var items = <String>[];

  for (int i = 1; i <= 6; i++) {
    // Verifica si el índice existe en monts
    var key = "value_month$i";
    var key2 = "month$i";
    if (prod.containsKey(key)) {
      // Verifica si la clave existe en prod
      items.add("${prod[key2]}:${prod[key]}");
    }
  }
  items.add("6m+:${prod['value_month_more']}");
  return items.join(", ");
}

ProductsStruct prodInId(ProductsStruct pr) {
  return ProductsStruct(
      sku: pr.sku,
      name: pr.name,
      dam: pr.dam,
      exp: pr.exp,
      cof: pr.cof,
      rec: pr.rec);
}

dynamic finalPetition(
  dynamic dataInitial,
  List<ProductsStruct> products,
  dynamic prods,
) {
  print("UNO: ${dataInitial}");
  print("DOS: ${products}");
  print("TRES: ${prods}");

  return dataInitial;
}

dynamic addProductId(dynamic data) {
  for (var product in data["products"]) {
    product["product_id"] = product["id"];
  }

  return data;
}

int countProgresoShelfs(dynamic jsonData) {
  List<dynamic> shelfs = jsonData is String ? jsonDecode(jsonData) : jsonData;

  int count = shelfs.where((shelf) => shelf["status"] == "progreso").length;

  return count;
}

String numberOfPendings(dynamic shelfs) {
  print(shelfs);
  if (shelfs is! List) return '0';

  int count =
      shelfs.where((shelf) => shelf['status_completed'] == false).length;
  return count.toString();
}

String completeAndPendigs(dynamic shelfs) {
  if (shelfs is! List) return 'Complete 0';

  int count = shelfs.where((shelf) => shelf['status_completed'] == true).length;

  int countComplete =
      shelfs.where((shelf) => shelf['status_completed'] == false).length;

  return "$count/${shelfs.length}";
}

int pintarProgresoShelfs(dynamic shelfs) {
  int base = 350;

  if (shelfs is! List || shelfs.isEmpty) return 0;

  int count = shelfs.where((shelf) => shelf['status_completed'] == true).length;

  return ((count / shelfs.length) * 350)
      .toInt(); //((count * 100) / base).toInt();
}

bool isAlienOrNot(
  dynamic shelf,
  String sku,
) {
  print('🔍 Verificando shelf: $shelf');
  print('🔎 Buscando coincidencia para SKU o UPC: $sku');

  if (shelf.containsKey('products') && shelf['products'] is List) {
    List<dynamic> products = shelf['products'];
    print('📦 Lista de productos encontrada: ${products.length} elementos');

    for (var product in products) {
      print('➡️ Revisando producto: $product');

      final productSku = product['sku'];
      final productUpc = product['upc'];

      print('🔸 SKU: $productSku, UPC: $productUpc');

      if (productSku == sku || productUpc == sku) {
        print('✅ Coincidencia encontrada con SKU o UPC');
        return true;
      }
    }

    print('❌ No se encontró coincidencia');
    return false;
  }

  print('⚠️ No se encontró la clave "products" o no es una lista');
  return false;
}

bool hasBackdoorProduct(dynamic products) {
  return products.any((product) =>
      product.containsKey('isBackdoor') && product['isBackdoor'] == true);
}

String getBackdoorProductName(dynamic products) {
  for (var product in products) {
    if (product.containsKey('isBackdoor') && product['isBackdoor'] == true) {
      return product['name'];
    }
  }
  return "";
}

List<int> buildRowList(int count) {
  return List.generate(count, (index) => index);
}

int sumarProductos(
  List<ProductListRowStruct> products,
  ProductListRowStruct nuevo,
) {
  return products.fold<int>(
    nuevo.width,
    (suma, producto) => suma + producto.width,
  );
}

dynamic newPlanogram(
  List<ListProductsStruct> rows,
  String name,
  String width,
  String height,
  int row,
  int depth,
  String? backgroundImage,
  String? img,
  String retailerName,
  List<RetailersStruct> retailers,
) {
  return {
    "name": name.toString(), // O usa name.toString() si debe ser dinámico
    "width": width,
    "height": height,
    "row": row,
    "depth": depth.toString(),
    "retailer_id": retailers
        .firstWhere(
          (r) => r.retailerName.toLowerCase() == retailerName.toLowerCase(),
        )
        .id,
    "rows": rows.map((r) {
      return {
        "height": r.height?.toString() ?? "0",
        "products": r.products
            .map((p) => {
                  "product_id": p.productId,
                  "position": p.position,
                  "quantity": p.quantity,
                })
            .toList(),
      };
    }).toList(),
    "img": img,
    "backgroundImage": backgroundImage,
  };
}

List<String> obtenerNombresRetailers(List<RetailersStruct> ret) {
  //  return retailers.map((r) => r.retailer_name).toList();
  return ret.map((r) => r.retailerName).toList();
}

List<ShelfsStruct>? filterarUPC(
  String? test,
  List<ShelfsStruct>? listData,
) {
  if (listData == null || listData.isEmpty) return [];

  final query = (test ?? '').trim().toLowerCase();
  if (query.isEmpty) return listData;

  return listData.where((item) {
    final itemUpc = (item.planogramName ?? '').toLowerCase();
    return itemUpc.contains(query);
  }).toList();
}

String zonaHoraria() {
  final now = DateTime.now();
  return now.timeZoneName;
}

DateTime? stringToDateTime(String dateString) {
  try {
    // Intenta parsear el string a DateTime
    return DateTime.parse(dateString);
  } catch (e) {
    // Si falla, retorna null
    print('Error al convertir string a DateTime: $e');
    return null;
  }
}
