import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user = LoginResponseTokenStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  LoginResponseTokenStruct _user = LoginResponseTokenStruct();
  LoginResponseTokenStruct get user => _user;
  set user(LoginResponseTokenStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(LoginResponseTokenStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  dynamic _routeJson;
  dynamic get routeJson => _routeJson;
  set routeJson(dynamic value) {
    _routeJson = value;
  }

  String _beforPhoto = '';
  String get beforPhoto => _beforPhoto;
  set beforPhoto(String value) {
    _beforPhoto = value;
  }

  RouteForMerchandiseStruct _routeOfDay = RouteForMerchandiseStruct();
  RouteForMerchandiseStruct get routeOfDay => _routeOfDay;
  set routeOfDay(RouteForMerchandiseStruct value) {
    _routeOfDay = value;
  }

  void updateRouteOfDayStruct(Function(RouteForMerchandiseStruct) updateFn) {
    updateFn(_routeOfDay);
  }

  ShelfsStruct _ShelfSelected = ShelfsStruct();
  ShelfsStruct get ShelfSelected => _ShelfSelected;
  set ShelfSelected(ShelfsStruct value) {
    _ShelfSelected = value;
  }

  void updateShelfSelectedStruct(Function(ShelfsStruct) updateFn) {
    updateFn(_ShelfSelected);
  }

  int _ShelfSelectedIndex = 0;
  int get ShelfSelectedIndex => _ShelfSelectedIndex;
  set ShelfSelectedIndex(int value) {
    _ShelfSelectedIndex = value;
  }

  String _beforePhoto = '';
  String get beforePhoto => _beforePhoto;
  set beforePhoto(String value) {
    _beforePhoto = value;
  }

  String _afterPhoto = '';
  String get afterPhoto => _afterPhoto;
  set afterPhoto(String value) {
    _afterPhoto = value;
  }

  ShelfsStruct _toShelfSelected = ShelfsStruct();
  ShelfsStruct get toShelfSelected => _toShelfSelected;
  set toShelfSelected(ShelfsStruct value) {
    _toShelfSelected = value;
  }

  void updateToShelfSelectedStruct(Function(ShelfsStruct) updateFn) {
    updateFn(_toShelfSelected);
  }

  List<RouteForMerchandiseStruct> _RoutesAvalible = [];
  List<RouteForMerchandiseStruct> get RoutesAvalible => _RoutesAvalible;
  set RoutesAvalible(List<RouteForMerchandiseStruct> value) {
    _RoutesAvalible = value;
  }

  void addToRoutesAvalible(RouteForMerchandiseStruct value) {
    RoutesAvalible.add(value);
  }

  void removeFromRoutesAvalible(RouteForMerchandiseStruct value) {
    RoutesAvalible.remove(value);
  }

  void removeAtIndexFromRoutesAvalible(int index) {
    RoutesAvalible.removeAt(index);
  }

  void updateRoutesAvalibleAtIndex(
    int index,
    RouteForMerchandiseStruct Function(RouteForMerchandiseStruct) updateFn,
  ) {
    RoutesAvalible[index] = updateFn(_RoutesAvalible[index]);
  }

  void insertAtIndexInRoutesAvalible(
      int index, RouteForMerchandiseStruct value) {
    RoutesAvalible.insert(index, value);
  }

  SendItemsShelfStruct _startShelf = SendItemsShelfStruct();
  SendItemsShelfStruct get startShelf => _startShelf;
  set startShelf(SendItemsShelfStruct value) {
    _startShelf = value;
  }

  void updateStartShelfStruct(Function(SendItemsShelfStruct) updateFn) {
    updateFn(_startShelf);
  }

  DateTime? _lastInteraction =
      DateTime.fromMillisecondsSinceEpoch(1738837260000);
  DateTime? get lastInteraction => _lastInteraction;
  set lastInteraction(DateTime? value) {
    _lastInteraction = value;
  }

  bool _inactivityDetected = false;
  bool get inactivityDetected => _inactivityDetected;
  set inactivityDetected(bool value) {
    _inactivityDetected = value;
  }

  List<ProductsStruct> _productosEscaneadosEnElDia = [];
  List<ProductsStruct> get productosEscaneadosEnElDia =>
      _productosEscaneadosEnElDia;
  set productosEscaneadosEnElDia(List<ProductsStruct> value) {
    _productosEscaneadosEnElDia = value;
  }

  void addToProductosEscaneadosEnElDia(ProductsStruct value) {
    productosEscaneadosEnElDia.add(value);
  }

  void removeFromProductosEscaneadosEnElDia(ProductsStruct value) {
    productosEscaneadosEnElDia.remove(value);
  }

  void removeAtIndexFromProductosEscaneadosEnElDia(int index) {
    productosEscaneadosEnElDia.removeAt(index);
  }

  void updateProductosEscaneadosEnElDiaAtIndex(
    int index,
    ProductsStruct Function(ProductsStruct) updateFn,
  ) {
    productosEscaneadosEnElDia[index] =
        updateFn(_productosEscaneadosEnElDia[index]);
  }

  void insertAtIndexInProductosEscaneadosEnElDia(
      int index, ProductsStruct value) {
    productosEscaneadosEnElDia.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
