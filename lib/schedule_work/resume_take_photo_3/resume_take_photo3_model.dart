import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resume_take_photo3_widget.dart' show ResumeTakePhoto3Widget;
import 'package:flutter/material.dart';

class ResumeTakePhoto3Model extends FlutterFlowModel<ResumeTakePhoto3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
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
