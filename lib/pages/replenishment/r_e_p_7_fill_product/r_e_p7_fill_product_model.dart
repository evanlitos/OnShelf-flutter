import '/flutter_flow/flutter_flow_util.dart';
import 'r_e_p7_fill_product_widget.dart' show REP7FillProductWidget;
import 'package:flutter/material.dart';

class REP7FillProductModel extends FlutterFlowModel<REP7FillProductWidget> {
  ///  Local state fields for this page.

  int localDam = 0;

  int localExp = 0;

  int localCof = 0;

  int localRec = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  var barcode2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();
  }
}
