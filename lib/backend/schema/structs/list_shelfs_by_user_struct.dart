// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListShelfsByUserStruct extends BaseStruct {
  ListShelfsByUserStruct({
    int? id,
    String? category,
    String? sku,
    String? planogram,
    int? fp,
    int? cof,
    int? sc,
    int? marq,
    int? dam,
    int? exp,
    int? rec,
  })  : _id = id,
        _category = category,
        _sku = sku,
        _planogram = planogram,
        _fp = fp,
        _cof = cof,
        _sc = sc,
        _marq = marq,
        _dam = dam,
        _exp = exp,
        _rec = rec;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "planogram" field.
  String? _planogram;
  String get planogram => _planogram ?? '';
  set planogram(String? val) => _planogram = val;

  bool hasPlanogram() => _planogram != null;

  // "fp" field.
  int? _fp;
  int get fp => _fp ?? 0;
  set fp(int? val) => _fp = val;

  void incrementFp(int amount) => fp = fp + amount;

  bool hasFp() => _fp != null;

  // "cof" field.
  int? _cof;
  int get cof => _cof ?? 0;
  set cof(int? val) => _cof = val;

  void incrementCof(int amount) => cof = cof + amount;

  bool hasCof() => _cof != null;

  // "sc" field.
  int? _sc;
  int get sc => _sc ?? 0;
  set sc(int? val) => _sc = val;

  void incrementSc(int amount) => sc = sc + amount;

  bool hasSc() => _sc != null;

  // "marq" field.
  int? _marq;
  int get marq => _marq ?? 0;
  set marq(int? val) => _marq = val;

  void incrementMarq(int amount) => marq = marq + amount;

  bool hasMarq() => _marq != null;

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

  // "rec" field.
  int? _rec;
  int get rec => _rec ?? 0;
  set rec(int? val) => _rec = val;

  void incrementRec(int amount) => rec = rec + amount;

  bool hasRec() => _rec != null;

  static ListShelfsByUserStruct fromMap(Map<String, dynamic> data) =>
      ListShelfsByUserStruct(
        id: castToType<int>(data['id']),
        category: data['category'] as String?,
        sku: data['sku'] as String?,
        planogram: data['planogram'] as String?,
        fp: castToType<int>(data['fp']),
        cof: castToType<int>(data['cof']),
        sc: castToType<int>(data['sc']),
        marq: castToType<int>(data['marq']),
        dam: castToType<int>(data['dam']),
        exp: castToType<int>(data['exp']),
        rec: castToType<int>(data['rec']),
      );

  static ListShelfsByUserStruct? maybeFromMap(dynamic data) => data is Map
      ? ListShelfsByUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'category': _category,
        'sku': _sku,
        'planogram': _planogram,
        'fp': _fp,
        'cof': _cof,
        'sc': _sc,
        'marq': _marq,
        'dam': _dam,
        'exp': _exp,
        'rec': _rec,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'planogram': serializeParam(
          _planogram,
          ParamType.String,
        ),
        'fp': serializeParam(
          _fp,
          ParamType.int,
        ),
        'cof': serializeParam(
          _cof,
          ParamType.int,
        ),
        'sc': serializeParam(
          _sc,
          ParamType.int,
        ),
        'marq': serializeParam(
          _marq,
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
        'rec': serializeParam(
          _rec,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListShelfsByUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListShelfsByUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        planogram: deserializeParam(
          data['planogram'],
          ParamType.String,
          false,
        ),
        fp: deserializeParam(
          data['fp'],
          ParamType.int,
          false,
        ),
        cof: deserializeParam(
          data['cof'],
          ParamType.int,
          false,
        ),
        sc: deserializeParam(
          data['sc'],
          ParamType.int,
          false,
        ),
        marq: deserializeParam(
          data['marq'],
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
        rec: deserializeParam(
          data['rec'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListShelfsByUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListShelfsByUserStruct &&
        id == other.id &&
        category == other.category &&
        sku == other.sku &&
        planogram == other.planogram &&
        fp == other.fp &&
        cof == other.cof &&
        sc == other.sc &&
        marq == other.marq &&
        dam == other.dam &&
        exp == other.exp &&
        rec == other.rec;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, category, sku, planogram, fp, cof, sc, marq, dam, exp, rec]);
}

ListShelfsByUserStruct createListShelfsByUserStruct({
  int? id,
  String? category,
  String? sku,
  String? planogram,
  int? fp,
  int? cof,
  int? sc,
  int? marq,
  int? dam,
  int? exp,
  int? rec,
}) =>
    ListShelfsByUserStruct(
      id: id,
      category: category,
      sku: sku,
      planogram: planogram,
      fp: fp,
      cof: cof,
      sc: sc,
      marq: marq,
      dam: dam,
      exp: exp,
      rec: rec,
    );
