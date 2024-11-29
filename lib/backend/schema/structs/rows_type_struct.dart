// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowsTypeStruct extends BaseStruct {
  RowsTypeStruct({
    int? id,
    int? planogramId,
    String? height,
    String? createdAt,
    String? updatedAt,
    List<ProductsTypeStruct>? products,
  })  : _id = id,
        _planogramId = planogramId,
        _height = height,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _products = products;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "planogram_id" field.
  int? _planogramId;
  int get planogramId => _planogramId ?? 0;
  set planogramId(int? val) => _planogramId = val;

  void incrementPlanogramId(int amount) => planogramId = planogramId + amount;

  bool hasPlanogramId() => _planogramId != null;

  // "height" field.
  String? _height;
  String get height => _height ?? '';
  set height(String? val) => _height = val;

  bool hasHeight() => _height != null;

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

  // "products" field.
  List<ProductsTypeStruct>? _products;
  List<ProductsTypeStruct> get products => _products ?? const [];
  set products(List<ProductsTypeStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductsTypeStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static RowsTypeStruct fromMap(Map<String, dynamic> data) => RowsTypeStruct(
        id: castToType<int>(data['id']),
        planogramId: castToType<int>(data['planogram_id']),
        height: data['height'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        products: getStructList(
          data['products'],
          ProductsTypeStruct.fromMap,
        ),
      );

  static RowsTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RowsTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'planogram_id': _planogramId,
        'height': _height,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'planogram_id': serializeParam(
          _planogramId,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static RowsTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RowsTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        planogramId: deserializeParam(
          data['planogram_id'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.String,
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
        products: deserializeStructParam<ProductsTypeStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RowsTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RowsTypeStruct &&
        id == other.id &&
        planogramId == other.planogramId &&
        height == other.height &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, planogramId, height, createdAt, updatedAt, products]);
}

RowsTypeStruct createRowsTypeStruct({
  int? id,
  int? planogramId,
  String? height,
  String? createdAt,
  String? updatedAt,
}) =>
    RowsTypeStruct(
      id: id,
      planogramId: planogramId,
      height: height,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
