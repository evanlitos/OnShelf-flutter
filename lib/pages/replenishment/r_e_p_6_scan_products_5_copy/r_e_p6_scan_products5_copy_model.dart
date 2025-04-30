import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'r_e_p6_scan_products5_copy_widget.dart'
    show REP6ScanProducts5CopyWidget;
import 'package:flutter/material.dart';

class REP6ScanProducts5CopyModel
    extends FlutterFlowModel<REP6ScanProducts5CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  var barcode2 = '';
  // Model for menulateral component.
  late MenulateralModel menulateralModel;

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();

    menulateralModel.dispose();
  }
}
