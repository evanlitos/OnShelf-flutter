import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'r_e_p3_resume_before_foto_widget.dart' show REP3ResumeBeforeFotoWidget;
import 'package:flutter/material.dart';

class REP3ResumeBeforeFotoModel
    extends FlutterFlowModel<REP3ResumeBeforeFotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_uploadData0xqREF = false;
  FFUploadedFile uploadedLocalFile_uploadData0xqREF =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
  }
}
