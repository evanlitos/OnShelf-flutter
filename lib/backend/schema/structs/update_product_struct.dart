// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UpdateProductStruct extends FFFirebaseStruct {
  UpdateProductStruct({
    int? amountPerFacing,
    String? category1,
    String? category2,
    String? category3,
    String? createdAt,
    int? depth,
    String? extraField1,
    String? extraField2,
    String? extraField3,
    String? extraField4,
    String? extraField5,
    int? height,
    int? id,
    String? image,
    int? imageId,
    String? imageName,
    String? name,
    int? planogramRowId,
    String? sku,
    String? status,
    int? uniqueId,
    String? upc,
    String? updatedAt,
    String? vendor,
    int? width,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amountPerFacing = amountPerFacing,
        _category1 = category1,
        _category2 = category2,
        _category3 = category3,
        _createdAt = createdAt,
        _depth = depth,
        _extraField1 = extraField1,
        _extraField2 = extraField2,
        _extraField3 = extraField3,
        _extraField4 = extraField4,
        _extraField5 = extraField5,
        _height = height,
        _id = id,
        _image = image,
        _imageId = imageId,
        _imageName = imageName,
        _name = name,
        _planogramRowId = planogramRowId,
        _sku = sku,
        _status = status,
        _uniqueId = uniqueId,
        _upc = upc,
        _updatedAt = updatedAt,
        _vendor = vendor,
        _width = width,
        super(firestoreUtilData);

  // "amountPerFacing" field.
  int? _amountPerFacing;
  int get amountPerFacing => _amountPerFacing ?? 0;
  set amountPerFacing(int? val) => _amountPerFacing = val;

  void incrementAmountPerFacing(int amount) =>
      amountPerFacing = amountPerFacing + amount;

  bool hasAmountPerFacing() => _amountPerFacing != null;

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

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

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

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "image_id" field.
  int? _imageId;
  int get imageId => _imageId ?? 0;
  set imageId(int? val) => _imageId = val;

  void incrementImageId(int amount) => imageId = imageId + amount;

  bool hasImageId() => _imageId != null;

  // "image_name" field.
  String? _imageName;
  String get imageName => _imageName ?? '';
  set imageName(String? val) => _imageName = val;

  bool hasImageName() => _imageName != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "planogram_row_id" field.
  int? _planogramRowId;
  int get planogramRowId => _planogramRowId ?? 0;
  set planogramRowId(int? val) => _planogramRowId = val;

  void incrementPlanogramRowId(int amount) =>
      planogramRowId = planogramRowId + amount;

  bool hasPlanogramRowId() => _planogramRowId != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "uniqueId" field.
  int? _uniqueId;
  int get uniqueId => _uniqueId ?? 0;
  set uniqueId(int? val) => _uniqueId = val;

  void incrementUniqueId(int amount) => uniqueId = uniqueId + amount;

  bool hasUniqueId() => _uniqueId != null;

  // "upc" field.
  String? _upc;
  String get upc => _upc ?? '';
  set upc(String? val) => _upc = val;

  bool hasUpc() => _upc != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  static UpdateProductStruct fromMap(Map<String, dynamic> data) =>
      UpdateProductStruct(
        amountPerFacing: castToType<int>(data['amountPerFacing']),
        category1: data['category_1'] as String?,
        category2: data['category_2'] as String?,
        category3: data['category_3'] as String?,
        createdAt: data['created_at'] as String?,
        depth: castToType<int>(data['depth']),
        extraField1: data['extra_field_1'] as String?,
        extraField2: data['extra_field_2'] as String?,
        extraField3: data['extra_field_3'] as String?,
        extraField4: data['extra_field_4'] as String?,
        extraField5: data['extra_field_5'] as String?,
        height: castToType<int>(data['height']),
        id: castToType<int>(data['id']),
        image: data['image'] as String?,
        imageId: castToType<int>(data['image_id']),
        imageName: data['image_name'] as String?,
        name: data['name'] as String?,
        planogramRowId: castToType<int>(data['planogram_row_id']),
        sku: data['sku'] as String?,
        status: data['status'] as String?,
        uniqueId: castToType<int>(data['uniqueId']),
        upc: data['upc'] as String?,
        updatedAt: data['updated_at'] as String?,
        vendor: data['vendor'] as String?,
        width: castToType<int>(data['width']),
      );

  static UpdateProductStruct? maybeFromMap(dynamic data) => data is Map
      ? UpdateProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amountPerFacing': _amountPerFacing,
        'category_1': _category1,
        'category_2': _category2,
        'category_3': _category3,
        'created_at': _createdAt,
        'depth': _depth,
        'extra_field_1': _extraField1,
        'extra_field_2': _extraField2,
        'extra_field_3': _extraField3,
        'extra_field_4': _extraField4,
        'extra_field_5': _extraField5,
        'height': _height,
        'id': _id,
        'image': _image,
        'image_id': _imageId,
        'image_name': _imageName,
        'name': _name,
        'planogram_row_id': _planogramRowId,
        'sku': _sku,
        'status': _status,
        'uniqueId': _uniqueId,
        'upc': _upc,
        'updated_at': _updatedAt,
        'vendor': _vendor,
        'width': _width,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amountPerFacing': serializeParam(
          _amountPerFacing,
          ParamType.int,
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
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
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
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'image_id': serializeParam(
          _imageId,
          ParamType.int,
        ),
        'image_name': serializeParam(
          _imageName,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'planogram_row_id': serializeParam(
          _planogramRowId,
          ParamType.int,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'uniqueId': serializeParam(
          _uniqueId,
          ParamType.int,
        ),
        'upc': serializeParam(
          _upc,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
      }.withoutNulls;

  static UpdateProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdateProductStruct(
        amountPerFacing: deserializeParam(
          data['amountPerFacing'],
          ParamType.int,
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
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
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
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        imageId: deserializeParam(
          data['image_id'],
          ParamType.int,
          false,
        ),
        imageName: deserializeParam(
          data['image_name'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        planogramRowId: deserializeParam(
          data['planogram_row_id'],
          ParamType.int,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        uniqueId: deserializeParam(
          data['uniqueId'],
          ParamType.int,
          false,
        ),
        upc: deserializeParam(
          data['upc'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UpdateProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdateProductStruct &&
        amountPerFacing == other.amountPerFacing &&
        category1 == other.category1 &&
        category2 == other.category2 &&
        category3 == other.category3 &&
        createdAt == other.createdAt &&
        depth == other.depth &&
        extraField1 == other.extraField1 &&
        extraField2 == other.extraField2 &&
        extraField3 == other.extraField3 &&
        extraField4 == other.extraField4 &&
        extraField5 == other.extraField5 &&
        height == other.height &&
        id == other.id &&
        image == other.image &&
        imageId == other.imageId &&
        imageName == other.imageName &&
        name == other.name &&
        planogramRowId == other.planogramRowId &&
        sku == other.sku &&
        status == other.status &&
        uniqueId == other.uniqueId &&
        upc == other.upc &&
        updatedAt == other.updatedAt &&
        vendor == other.vendor &&
        width == other.width;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amountPerFacing,
        category1,
        category2,
        category3,
        createdAt,
        depth,
        extraField1,
        extraField2,
        extraField3,
        extraField4,
        extraField5,
        height,
        id,
        image,
        imageId,
        imageName,
        name,
        planogramRowId,
        sku,
        status,
        uniqueId,
        upc,
        updatedAt,
        vendor,
        width
      ]);
}

UpdateProductStruct createUpdateProductStruct({
  int? amountPerFacing,
  String? category1,
  String? category2,
  String? category3,
  String? createdAt,
  int? depth,
  String? extraField1,
  String? extraField2,
  String? extraField3,
  String? extraField4,
  String? extraField5,
  int? height,
  int? id,
  String? image,
  int? imageId,
  String? imageName,
  String? name,
  int? planogramRowId,
  String? sku,
  String? status,
  int? uniqueId,
  String? upc,
  String? updatedAt,
  String? vendor,
  int? width,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UpdateProductStruct(
      amountPerFacing: amountPerFacing,
      category1: category1,
      category2: category2,
      category3: category3,
      createdAt: createdAt,
      depth: depth,
      extraField1: extraField1,
      extraField2: extraField2,
      extraField3: extraField3,
      extraField4: extraField4,
      extraField5: extraField5,
      height: height,
      id: id,
      image: image,
      imageId: imageId,
      imageName: imageName,
      name: name,
      planogramRowId: planogramRowId,
      sku: sku,
      status: status,
      uniqueId: uniqueId,
      upc: upc,
      updatedAt: updatedAt,
      vendor: vendor,
      width: width,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UpdateProductStruct? updateUpdateProductStruct(
  UpdateProductStruct? updateProduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    updateProduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUpdateProductStructData(
  Map<String, dynamic> firestoreData,
  UpdateProductStruct? updateProduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (updateProduct == null) {
    return;
  }
  if (updateProduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && updateProduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final updateProductData =
      getUpdateProductFirestoreData(updateProduct, forFieldValue);
  final nestedData =
      updateProductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = updateProduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUpdateProductFirestoreData(
  UpdateProductStruct? updateProduct, [
  bool forFieldValue = false,
]) {
  if (updateProduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(updateProduct.toMap());

  // Add any Firestore field values
  updateProduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUpdateProductListFirestoreData(
  List<UpdateProductStruct>? updateProducts,
) =>
    updateProducts
        ?.map((e) => getUpdateProductFirestoreData(e, true))
        .toList() ??
    [];
