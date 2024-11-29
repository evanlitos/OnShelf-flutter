// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsTypeStruct extends BaseStruct {
  ProductsTypeStruct({
    int? id,
    int? planogramRowId,
    int? productId,
    int? position,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    ProductTypeStruct? product,
  })  : _id = id,
        _planogramRowId = planogramRowId,
        _productId = productId,
        _position = position,
        _quantity = quantity,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _product = product;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "planogram_row_id" field.
  int? _planogramRowId;
  int get planogramRowId => _planogramRowId ?? 0;
  set planogramRowId(int? val) => _planogramRowId = val;

  void incrementPlanogramRowId(int amount) =>
      planogramRowId = planogramRowId + amount;

  bool hasPlanogramRowId() => _planogramRowId != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  set position(int? val) => _position = val;

  void incrementPosition(int amount) => position = position + amount;

  bool hasPosition() => _position != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

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

  // "product" field.
  ProductTypeStruct? _product;
  ProductTypeStruct get product => _product ?? ProductTypeStruct();
  set product(ProductTypeStruct? val) => _product = val;

  void updateProduct(Function(ProductTypeStruct) updateFn) {
    updateFn(_product ??= ProductTypeStruct());
  }

  bool hasProduct() => _product != null;

  static ProductsTypeStruct fromMap(Map<String, dynamic> data) =>
      ProductsTypeStruct(
        id: castToType<int>(data['id']),
        planogramRowId: castToType<int>(data['planogram_row_id']),
        productId: castToType<int>(data['product_id']),
        position: castToType<int>(data['position']),
        quantity: castToType<int>(data['quantity']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        product: ProductTypeStruct.maybeFromMap(data['product']),
      );

  static ProductsTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductsTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'planogram_row_id': _planogramRowId,
        'product_id': _productId,
        'position': _position,
        'quantity': _quantity,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'product': _product?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'planogram_row_id': serializeParam(
          _planogramRowId,
          ParamType.int,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'position': serializeParam(
          _position,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
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
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductsTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        planogramRowId: deserializeParam(
          data['planogram_row_id'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
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
        product: deserializeStructParam(
          data['product'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductsTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsTypeStruct &&
        id == other.id &&
        planogramRowId == other.planogramRowId &&
        productId == other.productId &&
        position == other.position &&
        quantity == other.quantity &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        product == other.product;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        planogramRowId,
        productId,
        position,
        quantity,
        createdAt,
        updatedAt,
        product
      ]);
}

ProductsTypeStruct createProductsTypeStruct({
  int? id,
  int? planogramRowId,
  int? productId,
  int? position,
  int? quantity,
  String? createdAt,
  String? updatedAt,
  ProductTypeStruct? product,
}) =>
    ProductsTypeStruct(
      id: id,
      planogramRowId: planogramRowId,
      productId: productId,
      position: position,
      quantity: quantity,
      createdAt: createdAt,
      updatedAt: updatedAt,
      product: product ?? ProductTypeStruct(),
    );
