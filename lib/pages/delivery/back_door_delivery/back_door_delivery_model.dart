import '/backend/api_requests/api_calls.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'back_door_delivery_widget.dart' show BackDoorDeliveryWidget;
import 'package:flutter/material.dart';

class BackDoorDeliveryModel extends FlutterFlowModel<BackDoorDeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProduct)] action in Container widget.
  ApiCallResponse? resultadoSKUBusqueda;
  bool isDataUploading_uploadDataX5foto = false;
  FFUploadedFile uploadedLocalFile_uploadDataX5foto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (rtb)] action in Container widget.
  ApiCallResponse? apiResult6ul;
  var barcodeMode = '';

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
