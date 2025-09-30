import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editnewplan_widget.dart' show EditnewplanWidget;
import 'package:flutter/material.dart';

class EditnewplanModel extends FlutterFlowModel<EditnewplanWidget> {
  ///  Local state fields for this page.

  UpdateProductStruct? product;
  void updateProductStruct(Function(UpdateProductStruct) updateFn) {
    updateFn(product ??= UpdateProductStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (searchProduct)] action in EDITNEWPLAN widget.
  ApiCallResponse? producSearch;
  bool isDataUploading_uploadDataIsc = false;
  FFUploadedFile uploadedLocalFile_uploadDataIsc =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (UPDATE PRODUCT)] action in Button widget.
  ApiCallResponse? apiResult55w;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? imgB64;
  // Stores action output result for [Backend Call - API (UPDATEPHOTOPRODUCT)] action in Button widget.
  ApiCallResponse? apiResultucq;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
