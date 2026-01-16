import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's22_resume_take_photo3_widget.dart' show S22ResumeTakePhoto3Widget;
import 'package:flutter/material.dart';

class S22ResumeTakePhoto3Model
    extends FlutterFlowModel<S22ResumeTakePhoto3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_uploadData0xq = false;
  FFUploadedFile uploadedLocalFile_uploadData0xq =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
  }
}
