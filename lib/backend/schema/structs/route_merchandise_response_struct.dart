// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RouteMerchandiseResponseStruct extends BaseStruct {
  RouteMerchandiseResponseStruct({
    int? id,
    int? routeId,
    int? merchandizerId,
    int? storeId,
    String? createdAt,
    String? updatedAt,
    RouteTypeStruct? route,
  })  : _id = id,
        _routeId = routeId,
        _merchandizerId = merchandizerId,
        _storeId = storeId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _route = route;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "route_id" field.
  int? _routeId;
  int get routeId => _routeId ?? 0;
  set routeId(int? val) => _routeId = val;

  void incrementRouteId(int amount) => routeId = routeId + amount;

  bool hasRouteId() => _routeId != null;

  // "merchandizer_id" field.
  int? _merchandizerId;
  int get merchandizerId => _merchandizerId ?? 0;
  set merchandizerId(int? val) => _merchandizerId = val;

  void incrementMerchandizerId(int amount) =>
      merchandizerId = merchandizerId + amount;

  bool hasMerchandizerId() => _merchandizerId != null;

  // "store_id" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "route" field.
  RouteTypeStruct? _route;
  RouteTypeStruct get route => _route ?? RouteTypeStruct();
  set route(RouteTypeStruct? val) => _route = val;

  void updateRoute(Function(RouteTypeStruct) updateFn) {
    updateFn(_route ??= RouteTypeStruct());
  }

  bool hasRoute() => _route != null;

  static RouteMerchandiseResponseStruct fromMap(Map<String, dynamic> data) =>
      RouteMerchandiseResponseStruct(
        id: castToType<int>(data['id']),
        routeId: castToType<int>(data['route_id']),
        merchandizerId: castToType<int>(data['merchandizer_id']),
        storeId: castToType<int>(data['store_id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        route: RouteTypeStruct.maybeFromMap(data['route']),
      );

  static RouteMerchandiseResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? RouteMerchandiseResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'route_id': _routeId,
        'merchandizer_id': _merchandizerId,
        'store_id': _storeId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'route': _route?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'route_id': serializeParam(
          _routeId,
          ParamType.int,
        ),
        'merchandizer_id': serializeParam(
          _merchandizerId,
          ParamType.int,
        ),
        'store_id': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'route': serializeParam(
          _route,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RouteMerchandiseResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RouteMerchandiseResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        routeId: deserializeParam(
          data['route_id'],
          ParamType.int,
          false,
        ),
        merchandizerId: deserializeParam(
          data['merchandizer_id'],
          ParamType.int,
          false,
        ),
        storeId: deserializeParam(
          data['store_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        route: deserializeStructParam(
          data['route'],
          ParamType.DataStruct,
          false,
          structBuilder: RouteTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RouteMerchandiseResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RouteMerchandiseResponseStruct &&
        id == other.id &&
        routeId == other.routeId &&
        merchandizerId == other.merchandizerId &&
        storeId == other.storeId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        route == other.route;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, routeId, merchandizerId, storeId, createdAt, updatedAt, route]);
}

RouteMerchandiseResponseStruct createRouteMerchandiseResponseStruct({
  int? id,
  int? routeId,
  int? merchandizerId,
  int? storeId,
  String? createdAt,
  String? updatedAt,
  RouteTypeStruct? route,
}) =>
    RouteMerchandiseResponseStruct(
      id: id,
      routeId: routeId,
      merchandizerId: merchandizerId,
      storeId: storeId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      route: route ?? RouteTypeStruct(),
    );
