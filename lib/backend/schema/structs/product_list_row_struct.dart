// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductListRowStruct extends FFFirebaseStruct {
  ProductListRowStruct({
    int? productId,
    int? position,
    int? quantity,
    int? height,
    int? width,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _position = position,
        _quantity = quantity,
        _height = height,
        _width = width,
        _img = img,
        super(firestoreUtilData);

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

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static ProductListRowStruct fromMap(Map<String, dynamic> data) =>
      ProductListRowStruct(
        productId: castToType<int>(data['product_id']),
        position: castToType<int>(data['position']),
        quantity: castToType<int>(data['quantity']),
        height: castToType<int>(data['height']),
        width: castToType<int>(data['width']),
        img: data['img'] as String?,
      );

  static ProductListRowStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductListRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'position': _position,
        'quantity': _quantity,
        'height': _height,
        'width': _width,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductListRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductListRowStruct(
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
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductListRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductListRowStruct &&
        productId == other.productId &&
        position == other.position &&
        quantity == other.quantity &&
        height == other.height &&
        width == other.width &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productId, position, quantity, height, width, img]);
}

ProductListRowStruct createProductListRowStruct({
  int? productId,
  int? position,
  int? quantity,
  int? height,
  int? width,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductListRowStruct(
      productId: productId,
      position: position,
      quantity: quantity,
      height: height,
      width: width,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductListRowStruct? updateProductListRowStruct(
  ProductListRowStruct? productListRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productListRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductListRowStructData(
  Map<String, dynamic> firestoreData,
  ProductListRowStruct? productListRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productListRow == null) {
    return;
  }
  if (productListRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productListRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productListRowData =
      getProductListRowFirestoreData(productListRow, forFieldValue);
  final nestedData =
      productListRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productListRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductListRowFirestoreData(
  ProductListRowStruct? productListRow, [
  bool forFieldValue = false,
]) {
  if (productListRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productListRow.toMap());

  // Add any Firestore field values
  productListRow.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListRowListFirestoreData(
  List<ProductListRowStruct>? productListRows,
) =>
    productListRows
        ?.map((e) => getProductListRowFirestoreData(e, true))
        .toList() ??
    [];
