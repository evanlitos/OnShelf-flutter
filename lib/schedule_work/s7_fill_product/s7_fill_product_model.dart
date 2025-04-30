import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's7_fill_product_widget.dart' show S7FillProductWidget;
import 'package:flutter/material.dart';

class S7FillProductModel extends FlutterFlowModel<S7FillProductWidget> {
  ///  Local state fields for this page.

  int localDam = 0;

  int localExp = 0;

  int localCof = 0;

  int localRec = 0;

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  var barcode2 = '';

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
