// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RouteTypeStruct extends BaseStruct {
  RouteTypeStruct({
    int? id,
    String? name,
    String? expectedTime,
    String? frequency,
    String? startDate,
    String? endDate,
    int? status,
    String? createdAt,
    String? updatedAt,
    List<BlocksTypeStruct>? blocks,
  })  : _id = id,
        _name = name,
        _expectedTime = expectedTime,
        _frequency = frequency,
        _startDate = startDate,
        _endDate = endDate,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _blocks = blocks;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

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

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "blocks" field.
  List<BlocksTypeStruct>? _blocks;
  List<BlocksTypeStruct> get blocks => _blocks ?? const [];
  set blocks(List<BlocksTypeStruct>? val) => _blocks = val;

  void updateBlocks(Function(List<BlocksTypeStruct>) updateFn) {
    updateFn(_blocks ??= []);
  }

  bool hasBlocks() => _blocks != null;

  static RouteTypeStruct fromMap(Map<String, dynamic> data) => RouteTypeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        expectedTime: data['expected_time'] as String?,
        frequency: data['frequency'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        status: castToType<int>(data['status']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        blocks: getStructList(
          data['blocks'],
          BlocksTypeStruct.fromMap,
        ),
      );

  static RouteTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? RouteTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'expected_time': _expectedTime,
        'frequency': _frequency,
        'start_date': _startDate,
        'end_date': _endDate,
        'status': _status,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'blocks': _blocks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
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
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'blocks': serializeParam(
          _blocks,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static RouteTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RouteTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
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
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        blocks: deserializeStructParam<BlocksTypeStruct>(
          data['blocks'],
          ParamType.DataStruct,
          true,
          structBuilder: BlocksTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RouteTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RouteTypeStruct &&
        id == other.id &&
        name == other.name &&
        expectedTime == other.expectedTime &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        listEquality.equals(blocks, other.blocks);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        expectedTime,
        frequency,
        startDate,
        endDate,
        status,
        createdAt,
        updatedAt,
        blocks
      ]);
}

RouteTypeStruct createRouteTypeStruct({
  int? id,
  String? name,
  String? expectedTime,
  String? frequency,
  String? startDate,
  String? endDate,
  int? status,
  String? createdAt,
  String? updatedAt,
}) =>
    RouteTypeStruct(
      id: id,
      name: name,
      expectedTime: expectedTime,
      frequency: frequency,
      startDate: startDate,
      endDate: endDate,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
