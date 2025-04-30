// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResponseRegisterRouteStruct extends FFFirebaseStruct {
  ResponseRegisterRouteStruct({
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
    String? updatedAt,
    String? createdAt,
    int? id,
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
        _updatedAt = updatedAt,
        _createdAt = createdAt,
        _id = id,
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

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static ResponseRegisterRouteStruct fromMap(Map<String, dynamic> data) =>
      ResponseRegisterRouteStruct(
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
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
      );

  static ResponseRegisterRouteStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseRegisterRouteStruct.fromMap(data.cast<String, dynamic>())
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
        'updated_at': _updatedAt,
        'created_at': _createdAt,
        'id': _id,
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
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponseRegisterRouteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponseRegisterRouteStruct(
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
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponseRegisterRouteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseRegisterRouteStruct &&
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
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        id == other.id;
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
        updatedAt,
        createdAt,
        id
      ]);
}

ResponseRegisterRouteStruct createResponseRegisterRouteStruct({
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
  String? updatedAt,
  String? createdAt,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResponseRegisterRouteStruct(
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
      updatedAt: updatedAt,
      createdAt: createdAt,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResponseRegisterRouteStruct? updateResponseRegisterRouteStruct(
  ResponseRegisterRouteStruct? responseRegisterRoute, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    responseRegisterRoute
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResponseRegisterRouteStructData(
  Map<String, dynamic> firestoreData,
  ResponseRegisterRouteStruct? responseRegisterRoute,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (responseRegisterRoute == null) {
    return;
  }
  if (responseRegisterRoute.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      responseRegisterRoute.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final responseRegisterRouteData = getResponseRegisterRouteFirestoreData(
      responseRegisterRoute, forFieldValue);
  final nestedData =
      responseRegisterRouteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      responseRegisterRoute.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResponseRegisterRouteFirestoreData(
  ResponseRegisterRouteStruct? responseRegisterRoute, [
  bool forFieldValue = false,
]) {
  if (responseRegisterRoute == null) {
    return {};
  }
  final firestoreData = mapToFirestore(responseRegisterRoute.toMap());

  // Add any Firestore field values
  responseRegisterRoute.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResponseRegisterRouteListFirestoreData(
  List<ResponseRegisterRouteStruct>? responseRegisterRoutes,
) =>
    responseRegisterRoutes
        ?.map((e) => getResponseRegisterRouteFirestoreData(e, true))
        .toList() ??
    [];
