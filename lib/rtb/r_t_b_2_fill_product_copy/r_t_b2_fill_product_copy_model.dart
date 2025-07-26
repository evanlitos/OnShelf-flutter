import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'r_t_b2_fill_product_copy_widget.dart' show RTB2FillProductCopyWidget;
import 'package:flutter/material.dart';

class RTB2FillProductCopyModel
    extends FlutterFlowModel<RTB2FillProductCopyWidget> {
  ///  Local state fields for this page.

  int localDam = 0;

  int localExp = 0;

  int localCof = 0;

  int localRec = 0;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_fotoProducto = false;
  FFUploadedFile uploadedLocalFile_fotoProducto =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (rtb)] action in Button widget.
  ApiCallResponse? sal;
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
