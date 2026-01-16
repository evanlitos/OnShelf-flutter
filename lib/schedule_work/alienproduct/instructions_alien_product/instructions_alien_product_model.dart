import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'instructions_alien_product_widget.dart'
    show InstructionsAlienProductWidget;
import 'package:flutter/material.dart';

class InstructionsAlienProductModel
    extends FlutterFlowModel<InstructionsAlienProductWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  bool isDataUploading_uploadDataMna = false;
  FFUploadedFile uploadedLocalFile_uploadDataMna =
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
