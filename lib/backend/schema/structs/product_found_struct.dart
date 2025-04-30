// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductFoundStruct extends FFFirebaseStruct {
  ProductFoundStruct({
    int? productId,
    String? name,
    String? sku,
    String? img,
    bool? notFound,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _name = name,
        _sku = sku,
        _img = img,
        _notFound = notFound,
        super(firestoreUtilData);

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "notFound" field.
  bool? _notFound;
  bool get notFound => _notFound ?? false;
  set notFound(bool? val) => _notFound = val;

  bool hasNotFound() => _notFound != null;

  static ProductFoundStruct fromMap(Map<String, dynamic> data) =>
      ProductFoundStruct(
        productId: castToType<int>(data['product_id']),
        name: data['name'] as String?,
        sku: data['sku'] as String?,
        img: data['img'] as String?,
        notFound: data['notFound'] as bool?,
      );

  static ProductFoundStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductFoundStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'name': _name,
        'sku': _sku,
        'img': _img,
        'notFound': _notFound,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'notFound': serializeParam(
          _notFound,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProductFoundStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductFoundStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        notFound: deserializeParam(
          data['notFound'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductFoundStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductFoundStruct &&
        productId == other.productId &&
        name == other.name &&
        sku == other.sku &&
        img == other.img &&
        notFound == other.notFound;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productId, name, sku, img, notFound]);
}

ProductFoundStruct createProductFoundStruct({
  int? productId,
  String? name,
  String? sku,
  String? img,
  bool? notFound,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductFoundStruct(
      productId: productId,
      name: name,
      sku: sku,
      img: img,
      notFound: notFound,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductFoundStruct? updateProductFoundStruct(
  ProductFoundStruct? productFound, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productFound
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductFoundStructData(
  Map<String, dynamic> firestoreData,
  ProductFoundStruct? productFound,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productFound == null) {
    return;
  }
  if (productFound.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productFound.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productFoundData =
      getProductFoundFirestoreData(productFound, forFieldValue);
  final nestedData =
      productFoundData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productFound.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductFoundFirestoreData(
  ProductFoundStruct? productFound, [
  bool forFieldValue = false,
]) {
  if (productFound == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productFound.toMap());

  // Add any Firestore field values
  productFound.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductFoundListFirestoreData(
  List<ProductFoundStruct>? productFounds,
) =>
    productFounds?.map((e) => getProductFoundFirestoreData(e, true)).toList() ??
    [];
