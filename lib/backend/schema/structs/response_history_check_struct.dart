// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseHistoryCheckStruct extends FFFirebaseStruct {
  ResponseHistoryCheckStruct({
    bool? success,
    String? message,
    List<ProductsStruct>? products,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _message = message,
        _products = products,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "products" field.
  List<ProductsStruct>? _products;
  List<ProductsStruct> get products => _products ?? const [];
  set products(List<ProductsStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductsStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static ResponseHistoryCheckStruct fromMap(Map<String, dynamic> data) =>
      ResponseHistoryCheckStruct(
        success: data['success'] as bool?,
        message: data['message'] as String?,
        products: getStructList(
          data['products'],
          ProductsStruct.fromMap,
        ),
      );

  static ResponseHistoryCheckStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseHistoryCheckStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'message': _message,
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ResponseHistoryCheckStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseHistoryCheckStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        products: deserializeStructParam<ProductsStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseHistoryCheckStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResponseHistoryCheckStruct &&
        success == other.success &&
        message == other.message &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality().hash([success, message, products]);
}

ResponseHistoryCheckStruct createResponseHistoryCheckStruct({
  bool? success,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResponseHistoryCheckStruct(
      success: success,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResponseHistoryCheckStruct? updateResponseHistoryCheckStruct(
  ResponseHistoryCheckStruct? responseHistoryCheck, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    responseHistoryCheck
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResponseHistoryCheckStructData(
  Map<String, dynamic> firestoreData,
  ResponseHistoryCheckStruct? responseHistoryCheck,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (responseHistoryCheck == null) {
    return;
  }
  if (responseHistoryCheck.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && responseHistoryCheck.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final responseHistoryCheckData =
      getResponseHistoryCheckFirestoreData(responseHistoryCheck, forFieldValue);
  final nestedData =
      responseHistoryCheckData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      responseHistoryCheck.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResponseHistoryCheckFirestoreData(
  ResponseHistoryCheckStruct? responseHistoryCheck, [
  bool forFieldValue = false,
]) {
  if (responseHistoryCheck == null) {
    return {};
  }
  final firestoreData = mapToFirestore(responseHistoryCheck.toMap());

  // Add any Firestore field values
  responseHistoryCheck.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResponseHistoryCheckListFirestoreData(
  List<ResponseHistoryCheckStruct>? responseHistoryChecks,
) =>
    responseHistoryChecks
        ?.map((e) => getResponseHistoryCheckFirestoreData(e, true))
        .toList() ??
    [];
