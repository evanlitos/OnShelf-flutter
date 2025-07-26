import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rep1_scanblockid_widget.dart' show Rep1ScanblockidWidget;
import 'package:flutter/material.dart';

class Rep1ScanblockidModel extends FlutterFlowModel<Rep1ScanblockidWidget> {
  ///  Local state fields for this page.

  String? idScan;

  ShelfsStruct? shelf;
  void updateShelfStruct(Function(ShelfsStruct) updateFn) {
    updateFn(shelf ??= ShelfsStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (search)] action in sinput_sku widget.
  ApiCallResponse? apiResultmnyCopy3;
  // Stores action output result for [Backend Call - API (search)] action in IconButton widget.
  ApiCallResponse? apiResultmny;
  var barcodeMode = '';
  // Stores action output result for [Backend Call - API (search)] action in Button widget.
  ApiCallResponse? apiResultmnyCopyQR;

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
