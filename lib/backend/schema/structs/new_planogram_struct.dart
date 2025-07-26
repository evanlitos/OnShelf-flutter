// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewPlanogramStruct extends FFFirebaseStruct {
  NewPlanogramStruct({
    String? name,
    String? width,
    String? height,
    int? row,
    String? depth,
    String? img,
    String? backgroundImage,
    List<RowsStruct>? rows,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _width = width,
        _height = height,
        _row = row,
        _depth = depth,
        _img = img,
        _backgroundImage = backgroundImage,
        _rows = rows,
        super(firestoreUtilData);

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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "backgroundImage" field.
  String? _backgroundImage;
  String get backgroundImage => _backgroundImage ?? '';
  set backgroundImage(String? val) => _backgroundImage = val;

  bool hasBackgroundImage() => _backgroundImage != null;

  // "rows" field.
  List<RowsStruct>? _rows;
  List<RowsStruct> get rows => _rows ?? const [];
  set rows(List<RowsStruct>? val) => _rows = val;

  void updateRows(Function(List<RowsStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  static NewPlanogramStruct fromMap(Map<String, dynamic> data) =>
      NewPlanogramStruct(
        name: data['name'] as String?,
        width: data['width'] as String?,
        height: data['height'] as String?,
        row: castToType<int>(data['row']),
        depth: data['depth'] as String?,
        img: data['img'] as String?,
        backgroundImage: data['backgroundImage'] as String?,
        rows: getStructList(
          data['rows'],
          RowsStruct.fromMap,
        ),
      );

  static NewPlanogramStruct? maybeFromMap(dynamic data) => data is Map
      ? NewPlanogramStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'width': _width,
        'height': _height,
        'row': _row,
        'depth': _depth,
        'img': _img,
        'backgroundImage': _backgroundImage,
        'rows': _rows?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'backgroundImage': serializeParam(
          _backgroundImage,
          ParamType.String,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NewPlanogramStruct fromSerializableMap(Map<String, dynamic> data) =>
      NewPlanogramStruct(
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
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        backgroundImage: deserializeParam(
          data['backgroundImage'],
          ParamType.String,
          false,
        ),
        rows: deserializeStructParam<RowsStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: RowsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NewPlanogramStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NewPlanogramStruct &&
        name == other.name &&
        width == other.width &&
        height == other.height &&
        row == other.row &&
        depth == other.depth &&
        img == other.img &&
        backgroundImage == other.backgroundImage &&
        listEquality.equals(rows, other.rows);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, width, height, row, depth, img, backgroundImage, rows]);
}

NewPlanogramStruct createNewPlanogramStruct({
  String? name,
  String? width,
  String? height,
  int? row,
  String? depth,
  String? img,
  String? backgroundImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NewPlanogramStruct(
      name: name,
      width: width,
      height: height,
      row: row,
      depth: depth,
      img: img,
      backgroundImage: backgroundImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NewPlanogramStruct? updateNewPlanogramStruct(
  NewPlanogramStruct? newPlanogram, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    newPlanogram
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNewPlanogramStructData(
  Map<String, dynamic> firestoreData,
  NewPlanogramStruct? newPlanogram,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (newPlanogram == null) {
    return;
  }
  if (newPlanogram.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && newPlanogram.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final newPlanogramData =
      getNewPlanogramFirestoreData(newPlanogram, forFieldValue);
  final nestedData =
      newPlanogramData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = newPlanogram.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNewPlanogramFirestoreData(
  NewPlanogramStruct? newPlanogram, [
  bool forFieldValue = false,
]) {
  if (newPlanogram == null) {
    return {};
  }
  final firestoreData = mapToFirestore(newPlanogram.toMap());

  // Add any Firestore field values
  newPlanogram.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNewPlanogramListFirestoreData(
  List<NewPlanogramStruct>? newPlanograms,
) =>
    newPlanograms?.map((e) => getNewPlanogramFirestoreData(e, true)).toList() ??
    [];
