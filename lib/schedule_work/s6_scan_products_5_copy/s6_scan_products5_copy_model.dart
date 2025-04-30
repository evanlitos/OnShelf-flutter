import '/components/menulateral_widget.dart';
import '/components/progress_shelfs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's6_scan_products5_copy_widget.dart' show S6ScanProducts5CopyWidget;
import 'package:flutter/material.dart';

class S6ScanProducts5CopyModel
    extends FlutterFlowModel<S6ScanProducts5CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Model for progressShelfs component.
  late ProgressShelfsModel progressShelfsModel;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
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
