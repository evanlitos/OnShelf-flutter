// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SendItemsShelfStruct extends FFFirebaseStruct {
  SendItemsShelfStruct({
    int? routeId,
    int? storeId,
    int? merchandizerId,
    int? planogramId,
    int? mapCanvaId,
    String? imgTodayPlanogram,
    String? imgMainShelfBefore,
    String? imgMainShelfAfter,
    String? startedAt,
    String? finishedAt,
    List<ProductsStruct>? products,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _routeId = routeId,
        _storeId = storeId,
        _merchandizerId = merchandizerId,
        _planogramId = planogramId,
        _mapCanvaId = mapCanvaId,
        _imgTodayPlanogram = imgTodayPlanogram,
        _imgMainShelfBefore = imgMainShelfBefore,
        _imgMainShelfAfter = imgMainShelfAfter,
        _startedAt = startedAt,
        _finishedAt = finishedAt,
        _products = products,
        super(firestoreUtilData);

  // "route_id" field.
  int? _routeId;
  int get routeId => _routeId ?? 0;
  set routeId(int? val) => _routeId = val;

  void incrementRouteId(int amount) => routeId = routeId + amount;

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

  // "planogram_id" field.
  int? _planogramId;
  int get planogramId => _planogramId ?? 0;
  set planogramId(int? val) => _planogramId = val;

  void incrementPlanogramId(int amount) => planogramId = planogramId + amount;

  bool hasPlanogramId() => _planogramId != null;

  // "map_canva_id" field.
  int? _mapCanvaId;
  int get mapCanvaId => _mapCanvaId ?? 0;
  set mapCanvaId(int? val) => _mapCanvaId = val;

  void incrementMapCanvaId(int amount) => mapCanvaId = mapCanvaId + amount;

  bool hasMapCanvaId() => _mapCanvaId != null;

  // "img_today_planogram" field.
  String? _imgTodayPlanogram;
  String get imgTodayPlanogram => _imgTodayPlanogram ?? '';
  set imgTodayPlanogram(String? val) => _imgTodayPlanogram = val;

  bool hasImgTodayPlanogram() => _imgTodayPlanogram != null;

  // "img_main_shelf_before" field.
  String? _imgMainShelfBefore;
  String get imgMainShelfBefore => _imgMainShelfBefore ?? '';
  set imgMainShelfBefore(String? val) => _imgMainShelfBefore = val;

  bool hasImgMainShelfBefore() => _imgMainShelfBefore != null;

  // "img_main_shelf_after" field.
  String? _imgMainShelfAfter;
  String get imgMainShelfAfter => _imgMainShelfAfter ?? '';
  set imgMainShelfAfter(String? val) => _imgMainShelfAfter = val;

  bool hasImgMainShelfAfter() => _imgMainShelfAfter != null;

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

  // "products" field.
  List<ProductsStruct>? _products;
  List<ProductsStruct> get products => _products ?? const [];
  set products(List<ProductsStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductsStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static SendItemsShelfStruct fromMap(Map<String, dynamic> data) =>
      SendItemsShelfStruct(
        routeId: castToType<int>(data['route_id']),
        storeId: castToType<int>(data['store_id']),
        merchandizerId: castToType<int>(data['merchandizer_id']),
        planogramId: castToType<int>(data['planogram_id']),
        mapCanvaId: castToType<int>(data['map_canva_id']),
        imgTodayPlanogram: data['img_today_planogram'] as String?,
        imgMainShelfBefore: data['img_main_shelf_before'] as String?,
        imgMainShelfAfter: data['img_main_shelf_after'] as String?,
        startedAt: data['started_at'] as String?,
        finishedAt: data['finished_at'] as String?,
        products: getStructList(
          data['products'],
          ProductsStruct.fromMap,
        ),
      );

  static SendItemsShelfStruct? maybeFromMap(dynamic data) => data is Map
      ? SendItemsShelfStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'route_id': _routeId,
        'store_id': _storeId,
        'merchandizer_id': _merchandizerId,
        'planogram_id': _planogramId,
        'map_canva_id': _mapCanvaId,
        'img_today_planogram': _imgTodayPlanogram,
        'img_main_shelf_before': _imgMainShelfBefore,
        'img_main_shelf_after': _imgMainShelfAfter,
        'started_at': _startedAt,
        'finished_at': _finishedAt,
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'route_id': serializeParam(
          _routeId,
          ParamType.int,
        ),
        'store_id': serializeParam(
          _storeId,
          ParamType.int,
        ),
        'merchandizer_id': serializeParam(
          _merchandizerId,
          ParamType.int,
        ),
        'planogram_id': serializeParam(
          _planogramId,
          ParamType.int,
        ),
        'map_canva_id': serializeParam(
          _mapCanvaId,
          ParamType.int,
        ),
        'img_today_planogram': serializeParam(
          _imgTodayPlanogram,
          ParamType.String,
        ),
        'img_main_shelf_before': serializeParam(
          _imgMainShelfBefore,
          ParamType.String,
        ),
        'img_main_shelf_after': serializeParam(
          _imgMainShelfAfter,
          ParamType.String,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'finished_at': serializeParam(
          _finishedAt,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SendItemsShelfStruct fromSerializableMap(Map<String, dynamic> data) =>
      SendItemsShelfStruct(
        routeId: deserializeParam(
          data['route_id'],
          ParamType.int,
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
        planogramId: deserializeParam(
          data['planogram_id'],
          ParamType.int,
          false,
        ),
        mapCanvaId: deserializeParam(
          data['map_canva_id'],
          ParamType.int,
          false,
        ),
        imgTodayPlanogram: deserializeParam(
          data['img_today_planogram'],
          ParamType.String,
          false,
        ),
        imgMainShelfBefore: deserializeParam(
          data['img_main_shelf_before'],
          ParamType.String,
          false,
        ),
        imgMainShelfAfter: deserializeParam(
          data['img_main_shelf_after'],
          ParamType.String,
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
        products: deserializeStructParam<ProductsStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SendItemsShelfStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SendItemsShelfStruct &&
        routeId == other.routeId &&
        storeId == other.storeId &&
        merchandizerId == other.merchandizerId &&
        planogramId == other.planogramId &&
        mapCanvaId == other.mapCanvaId &&
        imgTodayPlanogram == other.imgTodayPlanogram &&
        imgMainShelfBefore == other.imgMainShelfBefore &&
        imgMainShelfAfter == other.imgMainShelfAfter &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality().hash([
        routeId,
        storeId,
        merchandizerId,
        planogramId,
        mapCanvaId,
        imgTodayPlanogram,
        imgMainShelfBefore,
        imgMainShelfAfter,
        startedAt,
        finishedAt,
        products
      ]);
}

SendItemsShelfStruct createSendItemsShelfStruct({
  int? routeId,
  int? storeId,
  int? merchandizerId,
  int? planogramId,
  int? mapCanvaId,
  String? imgTodayPlanogram,
  String? imgMainShelfBefore,
  String? imgMainShelfAfter,
  String? startedAt,
  String? finishedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SendItemsShelfStruct(
      routeId: routeId,
      storeId: storeId,
      merchandizerId: merchandizerId,
      planogramId: planogramId,
      mapCanvaId: mapCanvaId,
      imgTodayPlanogram: imgTodayPlanogram,
      imgMainShelfBefore: imgMainShelfBefore,
      imgMainShelfAfter: imgMainShelfAfter,
      startedAt: startedAt,
      finishedAt: finishedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SendItemsShelfStruct? updateSendItemsShelfStruct(
  SendItemsShelfStruct? sendItemsShelf, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sendItemsShelf
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSendItemsShelfStructData(
  Map<String, dynamic> firestoreData,
  SendItemsShelfStruct? sendItemsShelf,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sendItemsShelf == null) {
    return;
  }
  if (sendItemsShelf.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sendItemsShelf.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sendItemsShelfData =
      getSendItemsShelfFirestoreData(sendItemsShelf, forFieldValue);
  final nestedData =
      sendItemsShelfData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sendItemsShelf.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSendItemsShelfFirestoreData(
  SendItemsShelfStruct? sendItemsShelf, [
  bool forFieldValue = false,
]) {
  if (sendItemsShelf == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sendItemsShelf.toMap());

  // Add any Firestore field values
  sendItemsShelf.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSendItemsShelfListFirestoreData(
  List<SendItemsShelfStruct>? sendItemsShelfs,
) =>
    sendItemsShelfs
        ?.map((e) => getSendItemsShelfFirestoreData(e, true))
        .toList() ??
    [];
