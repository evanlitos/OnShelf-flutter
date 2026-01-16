import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'instructions_alien_product_photo_widget.dart'
    show InstructionsAlienProductPhotoWidget;
import 'package:flutter/material.dart';

class InstructionsAlienProductPhotoModel
    extends FlutterFlowModel<InstructionsAlienProductPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_uploadData6cx = false;
  FFUploadedFile uploadedLocalFile_uploadData6cx =
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
