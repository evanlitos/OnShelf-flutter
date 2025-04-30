// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RouteForMerchandiseStruct extends FFFirebaseStruct {
  RouteForMerchandiseStruct({
    int? routeId,
    int? storeId,
    List<ShelfsStruct>? shelfs,
    String? routeName,
    String? expectedTime,
    String? frequency,
    String? storeName,
    String? startDate,
    String? endDate,
    int? isFreshness,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _routeId = routeId,
        _storeId = storeId,
        _shelfs = shelfs,
        _routeName = routeName,
        _expectedTime = expectedTime,
        _frequency = frequency,
        _storeName = storeName,
        _startDate = startDate,
        _endDate = endDate,
        _isFreshness = isFreshness,
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

  // "shelfs" field.
  List<ShelfsStruct>? _shelfs;
  List<ShelfsStruct> get shelfs => _shelfs ?? const [];
  set shelfs(List<ShelfsStruct>? val) => _shelfs = val;

  void updateShelfs(Function(List<ShelfsStruct>) updateFn) {
    updateFn(_shelfs ??= []);
  }

  bool hasShelfs() => _shelfs != null;

  // "route_name" field.
  String? _routeName;
  String get routeName => _routeName ?? '';
  set routeName(String? val) => _routeName = val;

  bool hasRouteName() => _routeName != null;

  // "expected_time" field.
  String? _expectedTime;
  String get expectedTime => _expectedTime ?? '';
  set expectedTime(String? val) => _expectedTime = val;

  bool hasExpectedTime() => _expectedTime != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;

  bool hasFrequency() => _frequency != null;

  // "store_name" field.
  String? _storeName;
  String get storeName => _storeName ?? '';
  set storeName(String? val) => _storeName = val;

  bool hasStoreName() => _storeName != null;

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "isFreshness" field.
  int? _isFreshness;
  int get isFreshness => _isFreshness ?? 0;
  set isFreshness(int? val) => _isFreshness = val;

  void incrementIsFreshness(int amount) => isFreshness = isFreshness + amount;

  bool hasIsFreshness() => _isFreshness != null;

  static RouteForMerchandiseStruct fromMap(Map<String, dynamic> data) =>
      RouteForMerchandiseStruct(
        routeId: castToType<int>(data['route_id']),
        storeId: castToType<int>(data['store_id']),
        shelfs: getStructList(
          data['shelfs'],
          ShelfsStruct.fromMap,
        ),
        routeName: data['route_name'] as String?,
        expectedTime: data['expected_time'] as String?,
        frequency: data['frequency'] as String?,
        storeName: data['store_name'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        isFreshness: castToType<int>(data['isFreshness']),
      );

  static RouteForMerchandiseStruct? maybeFromMap(dynamic data) => data is Map
      ? RouteForMerchandiseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'route_id': _routeId,
        'store_id': _storeId,
        'shelfs': _shelfs?.map((e) => e.toMap()).toList(),
        'route_name': _routeName,
        'expected_time': _expectedTime,
        'frequency': _frequency,
        'store_name': _storeName,
        'start_date': _startDate,
        'end_date': _endDate,
        'isFreshness': _isFreshness,
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
        'shelfs': serializeParam(
          _shelfs,
          ParamType.DataStruct,
          isList: true,
        ),
        'route_name': serializeParam(
          _routeName,
          ParamType.String,
        ),
        'expected_time': serializeParam(
          _expectedTime,
          ParamType.String,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
        'store_name': serializeParam(
          _storeName,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'isFreshness': serializeParam(
          _isFreshness,
          ParamType.int,
        ),
      }.withoutNulls;

  static RouteForMerchandiseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RouteForMerchandiseStruct(
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
        shelfs: deserializeStructParam<ShelfsStruct>(
          data['shelfs'],
          ParamType.DataStruct,
          true,
          structBuilder: ShelfsStruct.fromSerializableMap,
        ),
        routeName: deserializeParam(
          data['route_name'],
          ParamType.String,
          false,
        ),
        expectedTime: deserializeParam(
          data['expected_time'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
        storeName: deserializeParam(
          data['store_name'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.String,
          false,
        ),
        isFreshness: deserializeParam(
          data['isFreshness'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RouteForMerchandiseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RouteForMerchandiseStruct &&
        routeId == other.routeId &&
        storeId == other.storeId &&
        listEquality.equals(shelfs, other.shelfs) &&
        routeName == other.routeName &&
        expectedTime == other.expectedTime &&
        frequency == other.frequency &&
        storeName == other.storeName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        isFreshness == other.isFreshness;
  }

  @override
  int get hashCode => const ListEquality().hash([
        routeId,
        storeId,
        shelfs,
        routeName,
        expectedTime,
        frequency,
        storeName,
        startDate,
        endDate,
        isFreshness
      ]);
}

RouteForMerchandiseStruct createRouteForMerchandiseStruct({
  int? routeId,
  int? storeId,
  String? routeName,
  String? expectedTime,
  String? frequency,
  String? storeName,
  String? startDate,
  String? endDate,
  int? isFreshness,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RouteForMerchandiseStruct(
      routeId: routeId,
      storeId: storeId,
      routeName: routeName,
      expectedTime: expectedTime,
      frequency: frequency,
      storeName: storeName,
      startDate: startDate,
      endDate: endDate,
      isFreshness: isFreshness,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RouteForMerchandiseStruct? updateRouteForMerchandiseStruct(
  RouteForMerchandiseStruct? routeForMerchandise, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    routeForMerchandise
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRouteForMerchandiseStructData(
  Map<String, dynamic> firestoreData,
  RouteForMerchandiseStruct? routeForMerchandise,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (routeForMerchandise == null) {
    return;
  }
  if (routeForMerchandise.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && routeForMerchandise.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final routeForMerchandiseData =
      getRouteForMerchandiseFirestoreData(routeForMerchandise, forFieldValue);
  final nestedData =
      routeForMerchandiseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      routeForMerchandise.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRouteForMerchandiseFirestoreData(
  RouteForMerchandiseStruct? routeForMerchandise, [
  bool forFieldValue = false,
]) {
  if (routeForMerchandise == null) {
    return {};
  }
  final firestoreData = mapToFirestore(routeForMerchandise.toMap());

  // Add any Firestore field values
  routeForMerchandise.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRouteForMerchandiseListFirestoreData(
  List<RouteForMerchandiseStruct>? routeForMerchandises,
) =>
    routeForMerchandises
        ?.map((e) => getRouteForMerchandiseFirestoreData(e, true))
        .toList() ??
    [];
