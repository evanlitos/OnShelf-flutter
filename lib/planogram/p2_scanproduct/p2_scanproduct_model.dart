import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p2_scanproduct_widget.dart' show P2ScanproductWidget;
import 'package:flutter/material.dart';

class P2ScanproductModel extends FlutterFlowModel<P2ScanproductWidget> {
  ///  Local state fields for this page.

  int factorEscala = 4;

  List<ListProductsStruct> rows = [];
  void addToRows(ListProductsStruct item) => rows.add(item);
  void removeFromRows(ListProductsStruct item) => rows.remove(item);
  void removeAtIndexFromRows(int index) => rows.removeAt(index);
  void insertAtIndexInRows(int index, ListProductsStruct item) =>
      rows.insert(index, item);
  void updateRowsAtIndex(int index, Function(ListProductsStruct) updateFn) =>
      rows[index] = updateFn(rows[index]);

  int indiceActual = 0;

  String upcCode = ' ';

  int loop = 0;

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Stores action output result for [Backend Call - API (newPlanogram)] action in Create widget.
  ApiCallResponse? apiResultx0y;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchProductUPC)] action in sinput_sku widget.
  ApiCallResponse? searchUPCPRODUCT;
  var barcodeModeUPC = '';
  // Stores action output result for [Backend Call - API (searchProductUPC)] action in Image widget.
  ApiCallResponse? barcodeModeUPCQR;

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
