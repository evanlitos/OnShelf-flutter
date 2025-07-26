import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'r_e_p4_instructions_after_foto_widget.dart'
    show REP4InstructionsAfterFotoWidget;
import 'package:flutter/material.dart';

class REP4InstructionsAfterFotoModel
    extends FlutterFlowModel<REP4InstructionsAfterFotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_afterPhotoB = false;
  FFUploadedFile uploadedLocalFile_afterPhotoB =
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
