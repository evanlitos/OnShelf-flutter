import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'r_t_b1_find_code_widget.dart' show RTB1FindCodeWidget;
import 'package:flutter/material.dart';

class RTB1FindCodeModel extends FlutterFlowModel<RTB1FindCodeWidget> {
  ///  Local state fields for this page.

  String? idScan;

  ShelfsStruct? shelf;
  void updateShelfStruct(Function(ShelfsStruct) updateFn) {
    updateFn(shelf ??= ShelfsStruct());
  }

  List<String> scanList = [];
  void addToScanList(String item) => scanList.add(item);
  void removeFromScanList(String item) => scanList.remove(item);
  void removeAtIndexFromScanList(int index) => scanList.removeAt(index);
  void insertAtIndexInScanList(int index, String item) =>
      scanList.insert(index, item);
  void updateScanListAtIndex(int index, Function(String) updateFn) =>
      scanList[index] = updateFn(scanList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProduct)] action in IconButton widget.
  ApiCallResponse? resultadoSKU;
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
