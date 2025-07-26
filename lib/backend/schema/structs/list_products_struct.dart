// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListProductsStruct extends FFFirebaseStruct {
  ListProductsStruct({
    List<ProductListRowStruct>? products,
    int? height,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _products = products,
        _height = height,
        super(firestoreUtilData);

  // "products" field.
  List<ProductListRowStruct>? _products;
  List<ProductListRowStruct> get products => _products ?? const [];
  set products(List<ProductListRowStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductListRowStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  static ListProductsStruct fromMap(Map<String, dynamic> data) =>
      ListProductsStruct(
        products: getStructList(
          data['products'],
          ProductListRowStruct.fromMap,
        ),
        height: castToType<int>(data['height']),
      );

  static ListProductsStruct? maybeFromMap(dynamic data) => data is Map
      ? ListProductsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'products': _products?.map((e) => e.toMap()).toList(),
        'height': _height,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListProductsStruct(
        products: deserializeStructParam<ProductListRowStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductListRowStruct.fromSerializableMap,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListProductsStruct &&
        listEquality.equals(products, other.products) &&
        height == other.height;
  }

  @override
  int get hashCode => const ListEquality().hash([products, height]);
}

ListProductsStruct createListProductsStruct({
  int? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListProductsStruct(
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListProductsStruct? updateListProductsStruct(
  ListProductsStruct? listProducts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listProducts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListProductsStructData(
  Map<String, dynamic> firestoreData,
  ListProductsStruct? listProducts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listProducts == null) {
    return;
  }
  if (listProducts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listProducts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listProductsData =
      getListProductsFirestoreData(listProducts, forFieldValue);
  final nestedData =
      listProductsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listProducts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListProductsFirestoreData(
  ListProductsStruct? listProducts, [
  bool forFieldValue = false,
]) {
  if (listProducts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listProducts.toMap());

  // Add any Firestore field values
  listProducts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListProductsListFirestoreData(
  List<ListProductsStruct>? listProductss,
) =>
    listProductss?.map((e) => getListProductsFirestoreData(e, true)).toList() ??
    [];
