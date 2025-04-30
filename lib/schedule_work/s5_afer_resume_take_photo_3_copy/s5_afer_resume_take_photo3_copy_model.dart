import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's5_afer_resume_take_photo3_copy_widget.dart'
    show S5AferResumeTakePhoto3CopyWidget;
import 'package:flutter/material.dart';

class S5AferResumeTakePhoto3CopyModel
    extends FlutterFlowModel<S5AferResumeTakePhoto3CopyWidget> {
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
