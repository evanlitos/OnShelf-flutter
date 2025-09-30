// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShelfsStruct extends FFFirebaseStruct {
  ShelfsStruct({
    int? planogramId,
    String? planogramImg,
    int? mapCanvaId,
    String? category1,
    String? category2,
    String? category3,
    String? type,
    List<ProductsStruct>? products,
    String? startedAt,
    String? finishedAt,
    String? routeId,
    int? storeId,
    int? merchandizerId,
    String? status,
    String? name,
    String? planogramName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _planogramId = planogramId,
        _planogramImg = planogramImg,
        _mapCanvaId = mapCanvaId,
        _category1 = category1,
        _category2 = category2,
        _category3 = category3,
        _type = type,
        _products = products,
        _startedAt = startedAt,
        _finishedAt = finishedAt,
        _routeId = routeId,
        _storeId = storeId,
        _merchandizerId = merchandizerId,
        _status = status,
        _name = name,
        _planogramName = planogramName,
        super(firestoreUtilData);

  // "planogram_id" field.
  int? _planogramId;
  int get planogramId => _planogramId ?? 0;
  set planogramId(int? val) => _planogramId = val;

  void incrementPlanogramId(int amount) => planogramId = planogramId + amount;

  bool hasPlanogramId() => _planogramId != null;

  // "planogram_img" field.
  String? _planogramImg;
  String get planogramImg => _planogramImg ?? '';
  set planogramImg(String? val) => _planogramImg = val;

  bool hasPlanogramImg() => _planogramImg != null;

  // "map_canva_id" field.
  int? _mapCanvaId;
  int get mapCanvaId => _mapCanvaId ?? 0;
  set mapCanvaId(int? val) => _mapCanvaId = val;

  void incrementMapCanvaId(int amount) => mapCanvaId = mapCanvaId + amount;

  bool hasMapCanvaId() => _mapCanvaId != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "products" field.
  List<ProductsStruct>? _products;
  List<ProductsStruct> get products => _products ?? const [];
  set products(List<ProductsStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductsStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

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

  // "route_id" field.
  String? _routeId;
  String get routeId => _routeId ?? '';
  set routeId(String? val) => _routeId = val;

  bool hasRouteId() => _routeId != null;

  // "store_id" field.
  int? _storeId;
  int get storeId => _storeId ?? 0;
  set storeId(int? val) => _storeId = val;

  void incrementStoreId(int amount) => storeId = storeId + amount;

  bool hasStoreId() => _storeId != null;

  // "merchandizer_id" field.
  int? _merchandizerId;
  int get merchandizerId => _merchandizerId ?? 0;
  set merchandizerId(int? val) => _merchandizerId = val;

  void incrementMerchandizerId(int amount) =>
      merchandizerId = merchandizerId + amount;

  bool hasMerchandizerId() => _merchandizerId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "planogram_name" field.
  String? _planogramName;
  String get planogramName => _planogramName ?? '';
  set planogramName(String? val) => _planogramName = val;

  bool hasPlanogramName() => _planogramName != null;

  static ShelfsStruct fromMap(Map<String, dynamic> data) => ShelfsStruct(
        planogramId: castToType<int>(data['planogram_id']),
        planogramImg: data['planogram_img'] as String?,
        mapCanvaId: castToType<int>(data['map_canva_id']),
        category1: data['category1'] as String?,
        category2: data['category2'] as String?,
        category3: data['category3'] as String?,
        type: data['type'] as String?,
        products: getStructList(
          data['products'],
          ProductsStruct.fromMap,
        ),
        startedAt: data['started_at'] as String?,
        finishedAt: data['finished_at'] as String?,
        routeId: data['route_id'] as String?,
        storeId: castToType<int>(data['store_id']),
        merchandizerId: castToType<int>(data['merchandizer_id']),
        status: data['status'] as String?,
        name: data['name'] as String?,
        planogramName: data['planogram_name'] as String?,
      );

  static ShelfsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShelfsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'planogram_id': _planogramId,
        'planogram_img': _planogramImg,
        'map_canva_id': _mapCanvaId,
        'category1': _category1,
        'category2': _category2,
        'category3': _category3,
        'type': _type,
        'products': _products?.map((e) => e.toMap()).toList(),
        'started_at': _startedAt,
        'finished_at': _finishedAt,
        'route_id': _routeId,
        'store_id': _storeId,
        'merchandizer_id': _merchandizerId,
        'status': _status,
        'name': _name,
        'planogram_name': _planogramName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'planogram_id': serializeParam(
          _planogramId,
          ParamType.int,
        ),
        'planogram_img': serializeParam(
          _planogramImg,
          ParamType.String,
        ),
        'map_canva_id': serializeParam(
          _mapCanvaId,
          ParamType.int,
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
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'finished_at': serializeParam(
          _finishedAt,
          ParamType.String,
        ),
        'route_id': serializeParam(
          _routeId,
          ParamType.String,
        ),
        'store_id': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'merchandizer_id': serializeParam(
          _merchandizerId,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'planogram_name': serializeParam(
          _planogramName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ShelfsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShelfsStruct(
        planogramId: deserializeParam(
          data['planogram_id'],
          ParamType.int,
          false,
        ),
        planogramImg: deserializeParam(
          data['planogram_img'],
          ParamType.String,
          false,
        ),
        mapCanvaId: deserializeParam(
          data['map_canva_id'],
          ParamType.int,
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
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        products: deserializeStructParam<ProductsStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
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
        routeId: deserializeParam(
          data['route_id'],
          ParamType.String,
          false,
        ),
        storeId: deserializeParam(
          data['store_id'],
          ParamType.int,
          false,
        ),
        merchandizerId: deserializeParam(
          data['merchandizer_id'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        planogramName: deserializeParam(
          data['planogram_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ShelfsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShelfsStruct &&
        planogramId == other.planogramId &&
        planogramImg == other.planogramImg &&
        mapCanvaId == other.mapCanvaId &&
        category1 == other.category1 &&
        category2 == other.category2 &&
        category3 == other.category3 &&
        type == other.type &&
        listEquality.equals(products, other.products) &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        routeId == other.routeId &&
        storeId == other.storeId &&
        merchandizerId == other.merchandizerId &&
        status == other.status &&
        name == other.name &&
        planogramName == other.planogramName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        planogramId,
        planogramImg,
        mapCanvaId,
        category1,
        category2,
        category3,
        type,
        products,
        startedAt,
        finishedAt,
        routeId,
        storeId,
        merchandizerId,
        status,
        name,
        planogramName
      ]);
}

ShelfsStruct createShelfsStruct({
  int? planogramId,
  String? planogramImg,
  int? mapCanvaId,
  String? category1,
  String? category2,
  String? category3,
  String? type,
  String? startedAt,
  String? finishedAt,
  String? routeId,
  int? storeId,
  int? merchandizerId,
  String? status,
  String? name,
  String? planogramName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShelfsStruct(
      planogramId: planogramId,
      planogramImg: planogramImg,
      mapCanvaId: mapCanvaId,
      category1: category1,
      category2: category2,
      category3: category3,
      type: type,
      startedAt: startedAt,
      finishedAt: finishedAt,
      routeId: routeId,
      storeId: storeId,
      merchandizerId: merchandizerId,
      status: status,
      name: name,
      planogramName: planogramName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShelfsStruct? updateShelfsStruct(
  ShelfsStruct? shelfs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shelfs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShelfsStructData(
  Map<String, dynamic> firestoreData,
  ShelfsStruct? shelfs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shelfs == null) {
    return;
  }
  if (shelfs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shelfs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shelfsData = getShelfsFirestoreData(shelfs, forFieldValue);
  final nestedData = shelfsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shelfs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShelfsFirestoreData(
  ShelfsStruct? shelfs, [
  bool forFieldValue = false,
]) {
  if (shelfs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shelfs.toMap());

  // Add any Firestore field values
  shelfs.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShelfsListFirestoreData(
  List<ShelfsStruct>? shelfss,
) =>
    shelfss?.map((e) => getShelfsFirestoreData(e, true)).toList() ?? [];
