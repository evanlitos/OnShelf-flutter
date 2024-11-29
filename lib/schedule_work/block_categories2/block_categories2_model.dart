import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'block_categories2_widget.dart' show BlockCategories2Widget;
import 'package:flutter/material.dart';

class BlockCategories2Model extends FlutterFlowModel<BlockCategories2Widget> {
  ///  Local state fields for this page.

  dynamic routeToday;

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
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
