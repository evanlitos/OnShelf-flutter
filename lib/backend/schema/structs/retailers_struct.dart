// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RetailersStruct extends FFFirebaseStruct {
  RetailersStruct({
    int? id,
    String? retailerName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _retailerName = retailerName,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "retailer_name" field.
  String? _retailerName;
  String get retailerName => _retailerName ?? '';
  set retailerName(String? val) => _retailerName = val;

  bool hasRetailerName() => _retailerName != null;

  static RetailersStruct fromMap(Map<String, dynamic> data) => RetailersStruct(
        id: castToType<int>(data['id']),
        retailerName: data['retailer_name'] as String?,
      );

  static RetailersStruct? maybeFromMap(dynamic data) => data is Map
      ? RetailersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'retailer_name': _retailerName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'retailer_name': serializeParam(
          _retailerName,
          ParamType.String,
        ),
      }.withoutNulls;

  static RetailersStruct fromSerializableMap(Map<String, dynamic> data) =>
      RetailersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        retailerName: deserializeParam(
          data['retailer_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RetailersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RetailersStruct &&
        id == other.id &&
        retailerName == other.retailerName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, retailerName]);
}

RetailersStruct createRetailersStruct({
  int? id,
  String? retailerName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RetailersStruct(
      id: id,
      retailerName: retailerName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RetailersStruct? updateRetailersStruct(
  RetailersStruct? retailers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    retailers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRetailersStructData(
  Map<String, dynamic> firestoreData,
  RetailersStruct? retailers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (retailers == null) {
    return;
  }
  if (retailers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && retailers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final retailersData = getRetailersFirestoreData(retailers, forFieldValue);
  final nestedData = retailersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = retailers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRetailersFirestoreData(
  RetailersStruct? retailers, [
  bool forFieldValue = false,
]) {
  if (retailers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(retailers.toMap());

  // Add any Firestore field values
  retailers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRetailersListFirestoreData(
  List<RetailersStruct>? retailerss,
) =>
    retailerss?.map((e) => getRetailersFirestoreData(e, true)).toList() ?? [];
