import '/backend/api_requests/api_calls.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'f_r_e_s_h2_products_widget.dart' show FRESH2ProductsWidget;
import 'package:flutter/material.dart';

class FRESH2ProductsModel extends FlutterFlowModel<FRESH2ProductsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (freshness)] action in Button widget.
  ApiCallResponse? shipfresh;
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
