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
  // Stores action output result for [Backend Call - API (SendPhotos)] action in Button widget.
  ApiCallResponse? sendPhotos;
  // Stores action output result for [Backend Call - API (ShipShelf)] action in Button widget.
  ApiCallResponse? resSendShip;
  // Stores action output result for [Backend Call - API (Check SOH)] action in Button widget.
  ApiCallResponse? checkStock;
  // Stores action output result for [Backend Call - API (ValidateProducts)] action in Button widget.
  ApiCallResponse? validateProducts;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProduct)] action in IconButton widget.
  ApiCallResponse? resultadoSKU;
  var barcode2 = '';
  // Stores action output result for [Backend Call - API (searchProduct)] action in Button widget.
  ApiCallResponse? resultadoSKU4;
  // Stores action output result for [Backend Call - API (searchProduct)] action in Button widget.
  ApiCallResponse? searcchNewAlien2;
  // Stores action output result for [Backend Call - API (CreateProduct)] action in Button widget.
  ApiCallResponse? apiResultsrc;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? salidaB64;
  bool isDataUploading_uploadDataS6e = false;
  FFUploadedFile uploadedLocalFile_uploadDataS6e =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

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
