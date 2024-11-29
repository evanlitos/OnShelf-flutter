// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapCanvaTypeStruct extends BaseStruct {
  MapCanvaTypeStruct({
    int? id,
    int? mapId,
    String? coordinatesX,
    String? coordinatesY,
    int? width,
    int? height,
    String? rotation,
    String? type,
    String? stroke,
    int? strokeWidth,
    String? fill,
    String? idCanva,
    String? name,
    String? typeBlock,
    String? planogramBlock,
    String? idAsile,
    String? category1,
    String? category2,
    String? category3,
    String? createdAt,
    String? updatedAt,
    PlanogramTypeStruct? planogram,
  })  : _id = id,
        _mapId = mapId,
        _coordinatesX = coordinatesX,
        _coordinatesY = coordinatesY,
        _width = width,
        _height = height,
        _rotation = rotation,
        _type = type,
        _stroke = stroke,
        _strokeWidth = strokeWidth,
        _fill = fill,
        _idCanva = idCanva,
        _name = name,
        _typeBlock = typeBlock,
        _planogramBlock = planogramBlock,
        _idAsile = idAsile,
        _category1 = category1,
        _category2 = category2,
        _category3 = category3,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _planogram = planogram;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "map_id" field.
  int? _mapId;
  int get mapId => _mapId ?? 0;
  set mapId(int? val) => _mapId = val;

  void incrementMapId(int amount) => mapId = mapId + amount;

  bool hasMapId() => _mapId != null;

  // "coordinatesX" field.
  String? _coordinatesX;
  String get coordinatesX => _coordinatesX ?? '';
  set coordinatesX(String? val) => _coordinatesX = val;

  bool hasCoordinatesX() => _coordinatesX != null;

  // "coordinatesY" field.
  String? _coordinatesY;
  String get coordinatesY => _coordinatesY ?? '';
  set coordinatesY(String? val) => _coordinatesY = val;

  bool hasCoordinatesY() => _coordinatesY != null;

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "rotation" field.
  String? _rotation;
  String get rotation => _rotation ?? '';
  set rotation(String? val) => _rotation = val;

  bool hasRotation() => _rotation != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "stroke" field.
  String? _stroke;
  String get stroke => _stroke ?? '';
  set stroke(String? val) => _stroke = val;

  bool hasStroke() => _stroke != null;

  // "strokeWidth" field.
  int? _strokeWidth;
  int get strokeWidth => _strokeWidth ?? 0;
  set strokeWidth(int? val) => _strokeWidth = val;

  void incrementStrokeWidth(int amount) => strokeWidth = strokeWidth + amount;

  bool hasStrokeWidth() => _strokeWidth != null;

  // "fill" field.
  String? _fill;
  String get fill => _fill ?? '';
  set fill(String? val) => _fill = val;

  bool hasFill() => _fill != null;

  // "idCanva" field.
  String? _idCanva;
  String get idCanva => _idCanva ?? '';
  set idCanva(String? val) => _idCanva = val;

  bool hasIdCanva() => _idCanva != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type_block" field.
  String? _typeBlock;
  String get typeBlock => _typeBlock ?? '';
  set typeBlock(String? val) => _typeBlock = val;

  bool hasTypeBlock() => _typeBlock != null;

  // "planogram_block" field.
  String? _planogramBlock;
  String get planogramBlock => _planogramBlock ?? '';
  set planogramBlock(String? val) => _planogramBlock = val;

  bool hasPlanogramBlock() => _planogramBlock != null;

  // "idAsile" field.
  String? _idAsile;
  String get idAsile => _idAsile ?? '';
  set idAsile(String? val) => _idAsile = val;

  bool hasIdAsile() => _idAsile != null;

  // "category1" field.
  String? _category1;
  String get category1 => _category1 ?? '';
  set category1(String? val) => _category1 = val;

  bool hasCategory1() => _category1 != null;

  // "category2" field.
  String? _category2;
  String get category2 => _category2 ?? '';
  set category2(String? val) => _category2 = val;

  bool hasCategory2() => _category2 != null;

  // "category3" field.
  String? _category3;
  String get category3 => _category3 ?? '';
  set category3(String? val) => _category3 = val;

  bool hasCategory3() => _category3 != null;

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

  // "planogram" field.
  PlanogramTypeStruct? _planogram;
  PlanogramTypeStruct get planogram => _planogram ?? PlanogramTypeStruct();
  set planogram(PlanogramTypeStruct? val) => _planogram = val;

  void updatePlanogram(Function(PlanogramTypeStruct) updateFn) {
    updateFn(_planogram ??= PlanogramTypeStruct());
  }

  bool hasPlanogram() => _planogram != null;

  static MapCanvaTypeStruct fromMap(Map<String, dynamic> data) =>
      MapCanvaTypeStruct(
        id: castToType<int>(data['id']),
        mapId: castToType<int>(data['map_id']),
        coordinatesX: data['coordinatesX'] as String?,
        coordinatesY: data['coordinatesY'] as String?,
        width: castToType<int>(data['width']),
        height: castToType<int>(data['height']),
        rotation: data['rotation'] as String?,
        type: data['type'] as String?,
        stroke: data['stroke'] as String?,
        strokeWidth: castToType<int>(data['strokeWidth']),
        fill: data['fill'] as String?,
        idCanva: data['idCanva'] as String?,
        name: data['name'] as String?,
        typeBlock: data['type_block'] as String?,
        planogramBlock: data['planogram_block'] as String?,
        idAsile: data['idAsile'] as String?,
        category1: data['category1'] as String?,
        category2: data['category2'] as String?,
        category3: data['category3'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        planogram: PlanogramTypeStruct.maybeFromMap(data['planogram']),
      );

  static MapCanvaTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? MapCanvaTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'map_id': _mapId,
        'coordinatesX': _coordinatesX,
        'coordinatesY': _coordinatesY,
        'width': _width,
        'height': _height,
        'rotation': _rotation,
        'type': _type,
        'stroke': _stroke,
        'strokeWidth': _strokeWidth,
        'fill': _fill,
        'idCanva': _idCanva,
        'name': _name,
        'type_block': _typeBlock,
        'planogram_block': _planogramBlock,
        'idAsile': _idAsile,
        'category1': _category1,
        'category2': _category2,
        'category3': _category3,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'planogram': _planogram?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'map_id': serializeParam(
          _mapId,
          ParamType.int,
        ),
        'coordinatesX': serializeParam(
          _coordinatesX,
          ParamType.String,
        ),
        'coordinatesY': serializeParam(
          _coordinatesY,
          ParamType.String,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'rotation': serializeParam(
          _rotation,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'stroke': serializeParam(
          _stroke,
          ParamType.String,
        ),
        'strokeWidth': serializeParam(
          _strokeWidth,
          ParamType.int,
        ),
        'fill': serializeParam(
          _fill,
          ParamType.String,
        ),
        'idCanva': serializeParam(
          _idCanva,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'type_block': serializeParam(
          _typeBlock,
          ParamType.String,
        ),
        'planogram_block': serializeParam(
          _planogramBlock,
          ParamType.String,
        ),
        'idAsile': serializeParam(
          _idAsile,
          ParamType.String,
        ),
        'category1': serializeParam(
          _category1,
          ParamType.String,
        ),
        'category2': serializeParam(
          _category2,
          ParamType.String,
        ),
        'category3': serializeParam(
          _category3,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'planogram': serializeParam(
          _planogram,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MapCanvaTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      MapCanvaTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        mapId: deserializeParam(
          data['map_id'],
          ParamType.int,
          false,
        ),
        coordinatesX: deserializeParam(
          data['coordinatesX'],
          ParamType.String,
          false,
        ),
        coordinatesY: deserializeParam(
          data['coordinatesY'],
          ParamType.String,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        rotation: deserializeParam(
          data['rotation'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        stroke: deserializeParam(
          data['stroke'],
          ParamType.String,
          false,
        ),
        strokeWidth: deserializeParam(
          data['strokeWidth'],
          ParamType.int,
          false,
        ),
        fill: deserializeParam(
          data['fill'],
          ParamType.String,
          false,
        ),
        idCanva: deserializeParam(
          data['idCanva'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        typeBlock: deserializeParam(
          data['type_block'],
          ParamType.String,
          false,
        ),
        planogramBlock: deserializeParam(
          data['planogram_block'],
          ParamType.String,
          false,
        ),
        idAsile: deserializeParam(
          data['idAsile'],
          ParamType.String,
          false,
        ),
        category1: deserializeParam(
          data['category1'],
          ParamType.String,
          false,
        ),
        category2: deserializeParam(
          data['category2'],
          ParamType.String,
          false,
        ),
        category3: deserializeParam(
          data['category3'],
          ParamType.String,
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
        planogram: deserializeStructParam(
          data['planogram'],
          ParamType.DataStruct,
          false,
          structBuilder: PlanogramTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MapCanvaTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MapCanvaTypeStruct &&
        id == other.id &&
        mapId == other.mapId &&
        coordinatesX == other.coordinatesX &&
        coordinatesY == other.coordinatesY &&
        width == other.width &&
        height == other.height &&
        rotation == other.rotation &&
        type == other.type &&
        stroke == other.stroke &&
        strokeWidth == other.strokeWidth &&
        fill == other.fill &&
        idCanva == other.idCanva &&
        name == other.name &&
        typeBlock == other.typeBlock &&
        planogramBlock == other.planogramBlock &&
        idAsile == other.idAsile &&
        category1 == other.category1 &&
        category2 == other.category2 &&
        category3 == other.category3 &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        planogram == other.planogram;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        mapId,
        coordinatesX,
        coordinatesY,
        width,
        height,
        rotation,
        type,
        stroke,
        strokeWidth,
        fill,
        idCanva,
        name,
        typeBlock,
        planogramBlock,
        idAsile,
        category1,
        category2,
        category3,
        createdAt,
        updatedAt,
        planogram
      ]);
}

MapCanvaTypeStruct createMapCanvaTypeStruct({
  int? id,
  int? mapId,
  String? coordinatesX,
  String? coordinatesY,
  int? width,
  int? height,
  String? rotation,
  String? type,
  String? stroke,
  int? strokeWidth,
  String? fill,
  String? idCanva,
  String? name,
  String? typeBlock,
  String? planogramBlock,
  String? idAsile,
  String? category1,
  String? category2,
  String? category3,
  String? createdAt,
  String? updatedAt,
  PlanogramTypeStruct? planogram,
}) =>
    MapCanvaTypeStruct(
      id: id,
      mapId: mapId,
      coordinatesX: coordinatesX,
      coordinatesY: coordinatesY,
      width: width,
      height: height,
      rotation: rotation,
      type: type,
      stroke: stroke,
      strokeWidth: strokeWidth,
      fill: fill,
      idCanva: idCanva,
      name: name,
      typeBlock: typeBlock,
      planogramBlock: planogramBlock,
      idAsile: idAsile,
      category1: category1,
      category2: category2,
      category3: category3,
      createdAt: createdAt,
      updatedAt: updatedAt,
      planogram: planogram ?? PlanogramTypeStruct(),
    );
