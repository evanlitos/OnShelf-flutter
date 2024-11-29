// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanogramTypeStruct extends BaseStruct {
  PlanogramTypeStruct({
    int? id,
    String? name,
    String? width,
    String? height,
    int? row,
    String? depth,
    String? createdAt,
    String? updatedAt,
    String? img,
    List<RowsTypeStruct>? rows,
  })  : _id = id,
        _name = name,
        _width = width,
        _height = height,
        _row = row,
        _depth = depth,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _img = img,
        _rows = rows;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "width" field.
  String? _width;
  String get width => _width ?? '';
  set width(String? val) => _width = val;

  bool hasWidth() => _width != null;

  // "height" field.
  String? _height;
  String get height => _height ?? '';
  set height(String? val) => _height = val;

  bool hasHeight() => _height != null;

  // "row" field.
  int? _row;
  int get row => _row ?? 0;
  set row(int? val) => _row = val;

  void incrementRow(int amount) => row = row + amount;

  bool hasRow() => _row != null;

  // "depth" field.
  String? _depth;
  String get depth => _depth ?? '';
  set depth(String? val) => _depth = val;

  bool hasDepth() => _depth != null;

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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "rows" field.
  List<RowsTypeStruct>? _rows;
  List<RowsTypeStruct> get rows => _rows ?? const [];
  set rows(List<RowsTypeStruct>? val) => _rows = val;

  void updateRows(Function(List<RowsTypeStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  static PlanogramTypeStruct fromMap(Map<String, dynamic> data) =>
      PlanogramTypeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        width: data['width'] as String?,
        height: data['height'] as String?,
        row: castToType<int>(data['row']),
        depth: data['depth'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        img: data['img'] as String?,
        rows: getStructList(
          data['rows'],
          RowsTypeStruct.fromMap,
        ),
      );

  static PlanogramTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? PlanogramTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'width': _width,
        'height': _height,
        'row': _row,
        'depth': _depth,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'img': _img,
        'rows': _rows?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'width': serializeParam(
          _width,
          ParamType.String,
        ),
        'height': serializeParam(
          _height,
          ParamType.String,
        ),
        'row': serializeParam(
          _row,
          ParamType.int,
        ),
        'depth': serializeParam(
          _depth,
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
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PlanogramTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanogramTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.String,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.String,
          false,
        ),
        row: deserializeParam(
          data['row'],
          ParamType.int,
          false,
        ),
        depth: deserializeParam(
          data['depth'],
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
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        rows: deserializeStructParam<RowsTypeStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: RowsTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlanogramTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlanogramTypeStruct &&
        id == other.id &&
        name == other.name &&
        width == other.width &&
        height == other.height &&
        row == other.row &&
        depth == other.depth &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        img == other.img &&
        listEquality.equals(rows, other.rows);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, name, width, height, row, depth, createdAt, updatedAt, img, rows]);
}

PlanogramTypeStruct createPlanogramTypeStruct({
  int? id,
  String? name,
  String? width,
  String? height,
  int? row,
  String? depth,
  String? createdAt,
  String? updatedAt,
  String? img,
}) =>
    PlanogramTypeStruct(
      id: id,
      name: name,
      width: width,
      height: height,
      row: row,
      depth: depth,
      createdAt: createdAt,
      updatedAt: updatedAt,
      img: img,
    );
