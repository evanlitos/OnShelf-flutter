import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rep6_scanproducts_widget.dart' show Rep6ScanproductsWidget;
import 'package:flutter/material.dart';

class Rep6ScanproductsModel extends FlutterFlowModel<Rep6ScanproductsWidget> {
  ///  Local state fields for this page.

  List<ProductsStruct> productsList = [];
  void addToProductsList(ProductsStruct item) => productsList.add(item);
  void removeFromProductsList(ProductsStruct item) => productsList.remove(item);
  void removeAtIndexFromProductsList(int index) => productsList.removeAt(index);
  void insertAtIndexInProductsList(int index, ProductsStruct item) =>
      productsList.insert(index, item);
  void updateProductsListAtIndex(
          int index, Function(ProductsStruct) updateFn) =>
      productsList[index] = updateFn(productsList[index]);

  SendHistoryCheckStruct? shipSend;
  void updateShipSendStruct(Function(SendHistoryCheckStruct) updateFn) {
    updateFn(shipSend ??= SendHistoryCheckStruct());
  }

  SendItemsShelfStruct? finalShip;
  void updateFinalShipStruct(Function(SendItemsShelfStruct) updateFn) {
    updateFn(finalShip ??= SendItemsShelfStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Stores action output result for [Backend Call - API (SendPhotos)] action in Button widget.
  ApiCallResponse? sendPhotos;
  // Stores action output result for [Backend Call - API (ShipShelf)] action in Button widget.
  ApiCallResponse? resSendShip;
  // Stores action output result for [Backend Call - API (ValidateProducts)] action in Button widget.
  ApiCallResponse? validateProducts;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProduct)] action in IconButton widget.
  ApiCallResponse? resultadoSKU;
  bool isDataUploading_uploadDataWw5 = false;
  FFUploadedFile uploadedLocalFile_uploadDataWw5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? fileOutputAlien;
  var barcode3 = '';
  // Stores action output result for [Backend Call - API (searchProduct)] action in Button widget.
  ApiCallResponse? resultadoSKU3;
  // Stores action output result for [Backend Call - API (searchProduct)] action in Button widget.
  ApiCallResponse? searcchNewAlien;
  // Stores action output result for [Backend Call - API (CreateProduct)] action in Button widget.
  ApiCallResponse? apiResultsrc;

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();
  }
}
