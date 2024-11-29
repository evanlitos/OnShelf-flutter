// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlocksTypeStruct extends BaseStruct {
  BlocksTypeStruct({
    int? id,
    int? routeId,
    int? mapCanvaId,
    String? createdAt,
    String? updatedAt,
    MapCanvaTypeStruct? mapCanva,
  })  : _id = id,
        _routeId = routeId,
        _mapCanvaId = mapCanvaId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _mapCanva = mapCanva;

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

  // "map_canva_id" field.
  int? _mapCanvaId;
  int get mapCanvaId => _mapCanvaId ?? 0;
  set mapCanvaId(int? val) => _mapCanvaId = val;

  void incrementMapCanvaId(int amount) => mapCanvaId = mapCanvaId + amount;

  bool hasMapCanvaId() => _mapCanvaId != null;

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

  // "map_canva" field.
  MapCanvaTypeStruct? _mapCanva;
  MapCanvaTypeStruct get mapCanva => _mapCanva ?? MapCanvaTypeStruct();
  set mapCanva(MapCanvaTypeStruct? val) => _mapCanva = val;

  void updateMapCanva(Function(MapCanvaTypeStruct) updateFn) {
    updateFn(_mapCanva ??= MapCanvaTypeStruct());
  }

  bool hasMapCanva() => _mapCanva != null;

  static BlocksTypeStruct fromMap(Map<String, dynamic> data) =>
      BlocksTypeStruct(
        id: castToType<int>(data['id']),
        routeId: castToType<int>(data['route_id']),
        mapCanvaId: castToType<int>(data['map_canva_id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        mapCanva: MapCanvaTypeStruct.maybeFromMap(data['map_canva']),
      );

  static BlocksTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? BlocksTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'route_id': _routeId,
        'map_canva_id': _mapCanvaId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'map_canva': _mapCanva?.toMap(),
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
        'map_canva_id': serializeParam(
          _mapCanvaId,
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
        'map_canva': serializeParam(
          _mapCanva,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BlocksTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      BlocksTypeStruct(
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
        mapCanvaId: deserializeParam(
          data['map_canva_id'],
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
        mapCanva: deserializeStructParam(
          data['map_canva'],
          ParamType.DataStruct,
          false,
          structBuilder: MapCanvaTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BlocksTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BlocksTypeStruct &&
        id == other.id &&
        routeId == other.routeId &&
        mapCanvaId == other.mapCanvaId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        mapCanva == other.mapCanva;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, routeId, mapCanvaId, createdAt, updatedAt, mapCanva]);
}

BlocksTypeStruct createBlocksTypeStruct({
  int? id,
  int? routeId,
  int? mapCanvaId,
  String? createdAt,
  String? updatedAt,
  MapCanvaTypeStruct? mapCanva,
}) =>
    BlocksTypeStruct(
      id: id,
      routeId: routeId,
      mapCanvaId: mapCanvaId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      mapCanva: mapCanva ?? MapCanvaTypeStruct(),
    );
