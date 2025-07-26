// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowsStruct extends FFFirebaseStruct {
  RowsStruct({
    String? height,
    List<ProductListRowStruct>? products,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _height = height,
        _products = products,
        super(firestoreUtilData);

  // "height" field.
  String? _height;
  String get height => _height ?? '';
  set height(String? val) => _height = val;

  bool hasHeight() => _height != null;

  // "products" field.
  List<ProductListRowStruct>? _products;
  List<ProductListRowStruct> get products => _products ?? const [];
  set products(List<ProductListRowStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductListRowStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static RowsStruct fromMap(Map<String, dynamic> data) => RowsStruct(
        height: data['height'] as String?,
        products: getStructList(
          data['products'],
          ProductListRowStruct.fromMap,
        ),
      );

  static RowsStruct? maybeFromMap(dynamic data) =>
      data is Map ? RowsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'height': _height,
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'height': serializeParam(
          _height,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static RowsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RowsStruct(
        height: deserializeParam(
          data['height'],
          ParamType.String,
          false,
        ),
        products: deserializeStructParam<ProductListRowStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductListRowStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RowsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RowsStruct &&
        height == other.height &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality().hash([height, products]);
}

RowsStruct createRowsStruct({
  String? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RowsStruct(
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RowsStruct? updateRowsStruct(
  RowsStruct? rows, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rows
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRowsStructData(
  Map<String, dynamic> firestoreData,
  RowsStruct? rows,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rows == null) {
    return;
  }
  if (rows.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && rows.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rowsData = getRowsFirestoreData(rows, forFieldValue);
  final nestedData = rowsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rows.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRowsFirestoreData(
  RowsStruct? rows, [
  bool forFieldValue = false,
]) {
  if (rows == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rows.toMap());

  // Add any Firestore field values
  rows.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRowsListFirestoreData(
  List<RowsStruct>? rowss,
) =>
    rowss?.map((e) => getRowsFirestoreData(e, true)).toList() ?? [];
