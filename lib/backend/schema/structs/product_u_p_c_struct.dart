// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductUPCStruct extends FFFirebaseStruct {
  ProductUPCStruct({
    int? id,
    String? sku,
    String? upc,
    String? name,
    int? imageId,
    String? vendor,
    String? status,
    String? category1,
    String? category2,
    String? category3,
    int? width,
    int? height,
    int? depth,
    String? extraField1,
    String? extraField2,
    String? extraField3,
    String? extraField4,
    String? extraField5,
    String? createdAt,
    String? updatedAt,
    String? img,
    String? cot,
    String? ctn,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _sku = sku,
        _upc = upc,
        _name = name,
        _imageId = imageId,
        _vendor = vendor,
        _status = status,
        _category1 = category1,
        _category2 = category2,
        _category3 = category3,
        _width = width,
        _height = height,
        _depth = depth,
        _extraField1 = extraField1,
        _extraField2 = extraField2,
        _extraField3 = extraField3,
        _extraField4 = extraField4,
        _extraField5 = extraField5,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _img = img,
        _cot = cot,
        _ctn = ctn,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "upc" field.
  String? _upc;
  String get upc => _upc ?? '';
  set upc(String? val) => _upc = val;

  bool hasUpc() => _upc != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image_id" field.
  int? _imageId;
  int get imageId => _imageId ?? 0;
  set imageId(int? val) => _imageId = val;

  void incrementImageId(int amount) => imageId = imageId + amount;

  bool hasImageId() => _imageId != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "category_1" field.
  String? _category1;
  String get category1 => _category1 ?? '';
  set category1(String? val) => _category1 = val;

  bool hasCategory1() => _category1 != null;

  // "category_2" field.
  String? _category2;
  String get category2 => _category2 ?? '';
  set category2(String? val) => _category2 = val;

  bool hasCategory2() => _category2 != null;

  // "category_3" field.
  String? _category3;
  String get category3 => _category3 ?? '';
  set category3(String? val) => _category3 = val;

  bool hasCategory3() => _category3 != null;

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "depth" field.
  int? _depth;
  int get depth => _depth ?? 0;
  set depth(int? val) => _depth = val;

  void incrementDepth(int amount) => depth = depth + amount;

  bool hasDepth() => _depth != null;

  // "extra_field_1" field.
  String? _extraField1;
  String get extraField1 => _extraField1 ?? '';
  set extraField1(String? val) => _extraField1 = val;

  bool hasExtraField1() => _extraField1 != null;

  // "extra_field_2" field.
  String? _extraField2;
  String get extraField2 => _extraField2 ?? '';
  set extraField2(String? val) => _extraField2 = val;

  bool hasExtraField2() => _extraField2 != null;

  // "extra_field_3" field.
  String? _extraField3;
  String get extraField3 => _extraField3 ?? '';
  set extraField3(String? val) => _extraField3 = val;

  bool hasExtraField3() => _extraField3 != null;

  // "extra_field_4" field.
  String? _extraField4;
  String get extraField4 => _extraField4 ?? '';
  set extraField4(String? val) => _extraField4 = val;

  bool hasExtraField4() => _extraField4 != null;

  // "extra_field_5" field.
  String? _extraField5;
  String get extraField5 => _extraField5 ?? '';
  set extraField5(String? val) => _extraField5 = val;

  bool hasExtraField5() => _extraField5 != null;

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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "cot" field.
  String? _cot;
  String get cot => _cot ?? '';
  set cot(String? val) => _cot = val;

  bool hasCot() => _cot != null;

  // "ctn" field.
  String? _ctn;
  String get ctn => _ctn ?? '';
  set ctn(String? val) => _ctn = val;

  bool hasCtn() => _ctn != null;

  static ProductUPCStruct fromMap(Map<String, dynamic> data) =>
      ProductUPCStruct(
        id: castToType<int>(data['id']),
        sku: data['sku'] as String?,
        upc: data['upc'] as String?,
        name: data['name'] as String?,
        imageId: castToType<int>(data['image_id']),
        vendor: data['vendor'] as String?,
        status: data['status'] as String?,
        category1: data['category_1'] as String?,
        category2: data['category_2'] as String?,
        category3: data['category_3'] as String?,
        width: castToType<int>(data['width']),
        height: castToType<int>(data['height']),
        depth: castToType<int>(data['depth']),
        extraField1: data['extra_field_1'] as String?,
        extraField2: data['extra_field_2'] as String?,
        extraField3: data['extra_field_3'] as String?,
        extraField4: data['extra_field_4'] as String?,
        extraField5: data['extra_field_5'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        img: data['img'] as String?,
        cot: data['cot'] as String?,
        ctn: data['ctn'] as String?,
      );

  static ProductUPCStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductUPCStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'sku': _sku,
        'upc': _upc,
        'name': _name,
        'image_id': _imageId,
        'vendor': _vendor,
        'status': _status,
        'category_1': _category1,
        'category_2': _category2,
        'category_3': _category3,
        'width': _width,
        'height': _height,
        'depth': _depth,
        'extra_field_1': _extraField1,
        'extra_field_2': _extraField2,
        'extra_field_3': _extraField3,
        'extra_field_4': _extraField4,
        'extra_field_5': _extraField5,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'img': _img,
        'cot': _cot,
        'ctn': _ctn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'upc': serializeParam(
          _upc,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image_id': serializeParam(
          _imageId,
          ParamType.int,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'category_1': serializeParam(
          _category1,
          ParamType.String,
        ),
        'category_2': serializeParam(
          _category2,
          ParamType.String,
        ),
        'category_3': serializeParam(
          _category3,
          ParamType.String,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'depth': serializeParam(
          _depth,
          ParamType.int,
        ),
        'extra_field_1': serializeParam(
          _extraField1,
          ParamType.String,
        ),
        'extra_field_2': serializeParam(
          _extraField2,
          ParamType.String,
        ),
        'extra_field_3': serializeParam(
          _extraField3,
          ParamType.String,
        ),
        'extra_field_4': serializeParam(
          _extraField4,
          ParamType.String,
        ),
        'extra_field_5': serializeParam(
          _extraField5,
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
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'cot': serializeParam(
          _cot,
          ParamType.String,
        ),
        'ctn': serializeParam(
          _ctn,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductUPCStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductUPCStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        upc: deserializeParam(
          data['upc'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        imageId: deserializeParam(
          data['image_id'],
          ParamType.int,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        category1: deserializeParam(
          data['category_1'],
          ParamType.String,
          false,
        ),
        category2: deserializeParam(
          data['category_2'],
          ParamType.String,
          false,
        ),
        category3: deserializeParam(
          data['category_3'],
          ParamType.String,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        depth: deserializeParam(
          data['depth'],
          ParamType.int,
          false,
        ),
        extraField1: deserializeParam(
          data['extra_field_1'],
          ParamType.String,
          false,
        ),
        extraField2: deserializeParam(
          data['extra_field_2'],
          ParamType.String,
          false,
        ),
        extraField3: deserializeParam(
          data['extra_field_3'],
          ParamType.String,
          false,
        ),
        extraField4: deserializeParam(
          data['extra_field_4'],
          ParamType.String,
          false,
        ),
        extraField5: deserializeParam(
          data['extra_field_5'],
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
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        cot: deserializeParam(
          data['cot'],
          ParamType.String,
          false,
        ),
        ctn: deserializeParam(
          data['ctn'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductUPCStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductUPCStruct &&
        id == other.id &&
        sku == other.sku &&
        upc == other.upc &&
        name == other.name &&
        imageId == other.imageId &&
        vendor == other.vendor &&
        status == other.status &&
        category1 == other.category1 &&
        category2 == other.category2 &&
        category3 == other.category3 &&
        width == other.width &&
        height == other.height &&
        depth == other.depth &&
        extraField1 == other.extraField1 &&
        extraField2 == other.extraField2 &&
        extraField3 == other.extraField3 &&
        extraField4 == other.extraField4 &&
        extraField5 == other.extraField5 &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        img == other.img &&
        cot == other.cot &&
        ctn == other.ctn;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        sku,
        upc,
        name,
        imageId,
        vendor,
        status,
        category1,
        category2,
        category3,
        width,
        height,
        depth,
        extraField1,
        extraField2,
        extraField3,
        extraField4,
        extraField5,
        createdAt,
        updatedAt,
        img,
        cot,
        ctn
      ]);
}

ProductUPCStruct createProductUPCStruct({
  int? id,
  String? sku,
  String? upc,
  String? name,
  int? imageId,
  String? vendor,
  String? status,
  String? category1,
  String? category2,
  String? category3,
  int? width,
  int? height,
  int? depth,
  String? extraField1,
  String? extraField2,
  String? extraField3,
  String? extraField4,
  String? extraField5,
  String? createdAt,
  String? updatedAt,
  String? img,
  String? cot,
  String? ctn,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductUPCStruct(
      id: id,
      sku: sku,
      upc: upc,
      name: name,
      imageId: imageId,
      vendor: vendor,
      status: status,
      category1: category1,
      category2: category2,
      category3: category3,
      width: width,
      height: height,
      depth: depth,
      extraField1: extraField1,
      extraField2: extraField2,
      extraField3: extraField3,
      extraField4: extraField4,
      extraField5: extraField5,
      createdAt: createdAt,
      updatedAt: updatedAt,
      img: img,
      cot: cot,
      ctn: ctn,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductUPCStruct? updateProductUPCStruct(
  ProductUPCStruct? productUPC, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productUPC
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductUPCStructData(
  Map<String, dynamic> firestoreData,
  ProductUPCStruct? productUPC,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productUPC == null) {
    return;
  }
  if (productUPC.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productUPC.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productUPCData = getProductUPCFirestoreData(productUPC, forFieldValue);
  final nestedData = productUPCData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productUPC.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductUPCFirestoreData(
  ProductUPCStruct? productUPC, [
  bool forFieldValue = false,
]) {
  if (productUPC == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productUPC.toMap());

  // Add any Firestore field values
  productUPC.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductUPCListFirestoreData(
  List<ProductUPCStruct>? productUPCs,
) =>
    productUPCs?.map((e) => getProductUPCFirestoreData(e, true)).toList() ?? [];
