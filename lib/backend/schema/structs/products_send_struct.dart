// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductsSendStruct extends FFFirebaseStruct {
  ProductsSendStruct({
    int? productId,
    String? dam,
    String? exp,
    String? cof,
    String? rec,
    int? total,
    String? startedAt,
    String? finishedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _dam = dam,
        _exp = exp,
        _cof = cof,
        _rec = rec,
        _total = total,
        _startedAt = startedAt,
        _finishedAt = finishedAt,
        super(firestoreUtilData);

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "dam" field.
  String? _dam;
  String get dam => _dam ?? '';
  set dam(String? val) => _dam = val;

  bool hasDam() => _dam != null;

  // "exp" field.
  String? _exp;
  String get exp => _exp ?? '';
  set exp(String? val) => _exp = val;

  bool hasExp() => _exp != null;

  // "cof" field.
  String? _cof;
  String get cof => _cof ?? '';
  set cof(String? val) => _cof = val;

  bool hasCof() => _cof != null;

  // "rec" field.
  String? _rec;
  String get rec => _rec ?? '';
  set rec(String? val) => _rec = val;

  bool hasRec() => _rec != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "started_at" field.
  String? _startedAt;
  String get startedAt => _startedAt ?? '';
  set startedAt(String? val) => _startedAt = val;

  bool hasStartedAt() => _startedAt != null;

  // "finished_at" field.
  String? _finishedAt;
  String get finishedAt => _finishedAt ?? '';
  set finishedAt(String? val) => _finishedAt = val;

  bool hasFinishedAt() => _finishedAt != null;

  static ProductsSendStruct fromMap(Map<String, dynamic> data) =>
      ProductsSendStruct(
        productId: castToType<int>(data['product_id']),
        dam: data['dam'] as String?,
        exp: data['exp'] as String?,
        cof: data['cof'] as String?,
        rec: data['rec'] as String?,
        total: castToType<int>(data['total']),
        startedAt: data['started_at'] as String?,
        finishedAt: data['finished_at'] as String?,
      );

  static ProductsSendStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductsSendStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'dam': _dam,
        'exp': _exp,
        'cof': _cof,
        'rec': _rec,
        'total': _total,
        'started_at': _startedAt,
        'finished_at': _finishedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'dam': serializeParam(
          _dam,
          ParamType.String,
        ),
        'exp': serializeParam(
          _exp,
          ParamType.String,
        ),
        'cof': serializeParam(
          _cof,
          ParamType.String,
        ),
        'rec': serializeParam(
          _rec,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'finished_at': serializeParam(
          _finishedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductsSendStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsSendStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        dam: deserializeParam(
          data['dam'],
          ParamType.String,
          false,
        ),
        exp: deserializeParam(
          data['exp'],
          ParamType.String,
          false,
        ),
        cof: deserializeParam(
          data['cof'],
          ParamType.String,
          false,
        ),
        rec: deserializeParam(
          data['rec'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.String,
          false,
        ),
        finishedAt: deserializeParam(
          data['finished_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductsSendStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsSendStruct &&
        productId == other.productId &&
        dam == other.dam &&
        exp == other.exp &&
        cof == other.cof &&
        rec == other.rec &&
        total == other.total &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productId, dam, exp, cof, rec, total, startedAt, finishedAt]);
}

ProductsSendStruct createProductsSendStruct({
  int? productId,
  String? dam,
  String? exp,
  String? cof,
  String? rec,
  int? total,
  String? startedAt,
  String? finishedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductsSendStruct(
      productId: productId,
      dam: dam,
      exp: exp,
      cof: cof,
      rec: rec,
      total: total,
      startedAt: startedAt,
      finishedAt: finishedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductsSendStruct? updateProductsSendStruct(
  ProductsSendStruct? productsSend, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productsSend
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductsSendStructData(
  Map<String, dynamic> firestoreData,
  ProductsSendStruct? productsSend,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productsSend == null) {
    return;
  }
  if (productsSend.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productsSend.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productsSendData =
      getProductsSendFirestoreData(productsSend, forFieldValue);
  final nestedData =
      productsSendData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productsSend.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductsSendFirestoreData(
  ProductsSendStruct? productsSend, [
  bool forFieldValue = false,
]) {
  if (productsSend == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productsSend.toMap());

  // Add any Firestore field values
  productsSend.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductsSendListFirestoreData(
  List<ProductsSendStruct>? productsSends,
) =>
    productsSends?.map((e) => getProductsSendFirestoreData(e, true)).toList() ??
    [];
