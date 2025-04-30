import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/components/progress_shelfs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's6_scan_products5_widget.dart' show S6ScanProducts5Widget;
import 'package:flutter/material.dart';

class S6ScanProducts5Model extends FlutterFlowModel<S6ScanProducts5Widget> {
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
  // Model for progressShelfs component.
  late ProgressShelfsModel progressShelfsModel;
  // Stores action output result for [Backend Call - API (ValidateProducts)] action in Button widget.
  ApiCallResponse? validateProducts;
  // Stores action output result for [Backend Call - API (ShipShelf)] action in Button widget.
  ApiCallResponse? resSendShip;
  // Stores action output result for [Backend Call - API (SendPhotos)] action in Button widget.
  ApiCallResponse? sendPhotos;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProduct)] action in IconButton widget.
  ApiCallResponse? resultadoSKU;
  var barcode2 = '';

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
    progressShelfsModel = createModel(context, () => ProgressShelfsModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    progressShelfsModel.dispose();
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();
  }
}
