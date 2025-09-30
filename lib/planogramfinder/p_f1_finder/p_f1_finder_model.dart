import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_f1_finder_widget.dart' show PF1FinderWidget;
import 'package:flutter/material.dart';

class PF1FinderModel extends FlutterFlowModel<PF1FinderWidget> {
  ///  Local state fields for this page.

  String? idScan;

  ShelfsStruct? shelf;
  void updateShelfStruct(Function(ShelfsStruct) updateFn) {
    updateFn(shelf ??= ShelfsStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku2 widget.
  FocusNode? sinputSku2FocusNode;
  TextEditingController? sinputSku2TextController;
  String? Function(BuildContext, String?)? sinputSku2TextControllerValidator;
  // Stores action output result for [Backend Call - API (search)] action in sinput_sku2 widget.
  ApiCallResponse? apiResultmnyCODE;
  // Stores action output result for [Backend Call - API (search)] action in IconButton widget.
  ApiCallResponse? apiResultmny;
  var barcodeModeKLS = '';
  // Stores action output result for [Backend Call - API (search)] action in Button widget.
  ApiCallResponse? apiResultmnyQR;

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    sinputSku2FocusNode?.dispose();
    sinputSku2TextController?.dispose();
  }
}
