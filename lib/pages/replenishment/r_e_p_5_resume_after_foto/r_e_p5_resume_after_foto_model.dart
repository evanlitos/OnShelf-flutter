import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'r_e_p5_resume_after_foto_widget.dart' show REP5ResumeAfterFotoWidget;
import 'package:flutter/material.dart';

class REP5ResumeAfterFotoModel
    extends FlutterFlowModel<REP5ResumeAfterFotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_uploadDataR1jL = false;
  FFUploadedFile uploadedLocalFile_uploadDataR1jL =
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
