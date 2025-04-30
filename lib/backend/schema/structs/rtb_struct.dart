// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RtbStruct extends FFFirebaseStruct {
  RtbStruct({
    int? userId,
    int? productId,
    int? dam,
    int? exp,
    int? cof,
    int? rec,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userId = userId,
        _productId = productId,
        _dam = dam,
        _exp = exp,
        _cof = cof,
        _rec = rec,
        super(firestoreUtilData);

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "dam" field.
  int? _dam;
  int get dam => _dam ?? 0;
  set dam(int? val) => _dam = val;

  void incrementDam(int amount) => dam = dam + amount;

  bool hasDam() => _dam != null;

  // "exp" field.
  int? _exp;
  int get exp => _exp ?? 0;
  set exp(int? val) => _exp = val;

  void incrementExp(int amount) => exp = exp + amount;

  bool hasExp() => _exp != null;

  // "cof" field.
  int? _cof;
  int get cof => _cof ?? 0;
  set cof(int? val) => _cof = val;

  void incrementCof(int amount) => cof = cof + amount;

  bool hasCof() => _cof != null;

  // "rec" field.
  int? _rec;
  int get rec => _rec ?? 0;
  set rec(int? val) => _rec = val;

  void incrementRec(int amount) => rec = rec + amount;

  bool hasRec() => _rec != null;

  static RtbStruct fromMap(Map<String, dynamic> data) => RtbStruct(
        userId: castToType<int>(data['user_id']),
        productId: castToType<int>(data['product_id']),
        dam: castToType<int>(data['dam']),
        exp: castToType<int>(data['exp']),
        cof: castToType<int>(data['cof']),
        rec: castToType<int>(data['rec']),
      );

  static RtbStruct? maybeFromMap(dynamic data) =>
      data is Map ? RtbStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'product_id': _productId,
        'dam': _dam,
        'exp': _exp,
        'cof': _cof,
        'rec': _rec,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'dam': serializeParam(
          _dam,
          ParamType.int,
        ),
        'exp': serializeParam(
          _exp,
          ParamType.int,
        ),
        'cof': serializeParam(
          _cof,
          ParamType.int,
        ),
        'rec': serializeParam(
          _rec,
          ParamType.int,
        ),
      }.withoutNulls;

  static RtbStruct fromSerializableMap(Map<String, dynamic> data) => RtbStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        dam: deserializeParam(
          data['dam'],
          ParamType.int,
          false,
        ),
        exp: deserializeParam(
          data['exp'],
          ParamType.int,
          false,
        ),
        cof: deserializeParam(
          data['cof'],
          ParamType.int,
          false,
        ),
        rec: deserializeParam(
          data['rec'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RtbStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RtbStruct &&
        userId == other.userId &&
        productId == other.productId &&
        dam == other.dam &&
        exp == other.exp &&
        cof == other.cof &&
        rec == other.rec;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userId, productId, dam, exp, cof, rec]);
}

RtbStruct createRtbStruct({
  int? userId,
  int? productId,
  int? dam,
  int? exp,
  int? cof,
  int? rec,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RtbStruct(
      userId: userId,
      productId: productId,
      dam: dam,
      exp: exp,
      cof: cof,
      rec: rec,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RtbStruct? updateRtbStruct(
  RtbStruct? rtb, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rtb
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRtbStructData(
  Map<String, dynamic> firestoreData,
  RtbStruct? rtb,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rtb == null) {
    return;
  }
  if (rtb.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && rtb.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rtbData = getRtbFirestoreData(rtb, forFieldValue);
  final nestedData = rtbData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rtb.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRtbFirestoreData(
  RtbStruct? rtb, [
  bool forFieldValue = false,
]) {
  if (rtb == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rtb.toMap());

  // Add any Firestore field values
  rtb.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRtbListFirestoreData(
  List<RtbStruct>? rtbs,
) =>
    rtbs?.map((e) => getRtbFirestoreData(e, true)).toList() ?? [];
