import 'package:flutter/material.dart';
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

  List<RouteMerchandiseResponseStruct> _routeLOC = [];
  List<RouteMerchandiseResponseStruct> get routeLOC => _routeLOC;
  set routeLOC(List<RouteMerchandiseResponseStruct> value) {
    _routeLOC = value;
  }

  void addToRouteLOC(RouteMerchandiseResponseStruct value) {
    routeLOC.add(value);
  }

  void removeFromRouteLOC(RouteMerchandiseResponseStruct value) {
    routeLOC.remove(value);
  }

  void removeAtIndexFromRouteLOC(int index) {
    routeLOC.removeAt(index);
  }

  void updateRouteLOCAtIndex(
    int index,
    RouteMerchandiseResponseStruct Function(RouteMerchandiseResponseStruct)
        updateFn,
  ) {
    routeLOC[index] = updateFn(_routeLOC[index]);
  }

  void insertAtIndexInRouteLOC(
      int index, RouteMerchandiseResponseStruct value) {
    routeLOC.insert(index, value);
  }

  RouteMerchandiseResponseStruct _routeUnic = RouteMerchandiseResponseStruct();
  RouteMerchandiseResponseStruct get routeUnic => _routeUnic;
  set routeUnic(RouteMerchandiseResponseStruct value) {
    _routeUnic = value;
  }

  void updateRouteUnicStruct(
      Function(RouteMerchandiseResponseStruct) updateFn) {
    updateFn(_routeUnic);
  }

  dynamic _routeJson;
  dynamic get routeJson => _routeJson;
  set routeJson(dynamic value) {
    _routeJson = value;
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
