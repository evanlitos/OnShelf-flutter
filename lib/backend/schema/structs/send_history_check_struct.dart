// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SendHistoryCheckStruct extends FFFirebaseStruct {
  SendHistoryCheckStruct({
    List<ProductsStruct>? productsMerchaiser,
    List<ProductsStruct>? productsErp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productsMerchaiser = productsMerchaiser,
        _productsErp = productsErp,
        super(firestoreUtilData);

  // "products_merchaiser" field.
  List<ProductsStruct>? _productsMerchaiser;
  List<ProductsStruct> get productsMerchaiser =>
      _productsMerchaiser ?? const [];
  set productsMerchaiser(List<ProductsStruct>? val) =>
      _productsMerchaiser = val;

  void updateProductsMerchaiser(Function(List<ProductsStruct>) updateFn) {
    updateFn(_productsMerchaiser ??= []);
  }

  bool hasProductsMerchaiser() => _productsMerchaiser != null;

  // "products_erp" field.
  List<ProductsStruct>? _productsErp;
  List<ProductsStruct> get productsErp => _productsErp ?? const [];
  set productsErp(List<ProductsStruct>? val) => _productsErp = val;

  void updateProductsErp(Function(List<ProductsStruct>) updateFn) {
    updateFn(_productsErp ??= []);
  }

  bool hasProductsErp() => _productsErp != null;

  static SendHistoryCheckStruct fromMap(Map<String, dynamic> data) =>
      SendHistoryCheckStruct(
        productsMerchaiser: getStructList(
          data['products_merchaiser'],
          ProductsStruct.fromMap,
        ),
        productsErp: getStructList(
          data['products_erp'],
          ProductsStruct.fromMap,
        ),
      );

  static SendHistoryCheckStruct? maybeFromMap(dynamic data) => data is Map
      ? SendHistoryCheckStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'products_merchaiser':
            _productsMerchaiser?.map((e) => e.toMap()).toList(),
        'products_erp': _productsErp?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'products_merchaiser': serializeParam(
          _productsMerchaiser,
          ParamType.DataStruct,
          isList: true,
        ),
        'products_erp': serializeParam(
          _productsErp,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SendHistoryCheckStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SendHistoryCheckStruct(
        productsMerchaiser: deserializeStructParam<ProductsStruct>(
          data['products_merchaiser'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
        ),
        productsErp: deserializeStructParam<ProductsStruct>(
          data['products_erp'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SendHistoryCheckStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SendHistoryCheckStruct &&
        listEquality.equals(productsMerchaiser, other.productsMerchaiser) &&
        listEquality.equals(productsErp, other.productsErp);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productsMerchaiser, productsErp]);
}

SendHistoryCheckStruct createSendHistoryCheckStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SendHistoryCheckStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SendHistoryCheckStruct? updateSendHistoryCheckStruct(
  SendHistoryCheckStruct? sendHistoryCheck, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sendHistoryCheck
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSendHistoryCheckStructData(
  Map<String, dynamic> firestoreData,
  SendHistoryCheckStruct? sendHistoryCheck,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sendHistoryCheck == null) {
    return;
  }
  if (sendHistoryCheck.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sendHistoryCheck.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sendHistoryCheckData =
      getSendHistoryCheckFirestoreData(sendHistoryCheck, forFieldValue);
  final nestedData =
      sendHistoryCheckData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sendHistoryCheck.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSendHistoryCheckFirestoreData(
  SendHistoryCheckStruct? sendHistoryCheck, [
  bool forFieldValue = false,
]) {
  if (sendHistoryCheck == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sendHistoryCheck.toMap());

  // Add any Firestore field values
  sendHistoryCheck.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSendHistoryCheckListFirestoreData(
  List<SendHistoryCheckStruct>? sendHistoryChecks,
) =>
    sendHistoryChecks
        ?.map((e) => getSendHistoryCheckFirestoreData(e, true))
        .toList() ??
    [];
