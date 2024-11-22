import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'block_categories_instructions_widget.dart'
    show BlockCategoriesInstructionsWidget;
import 'package:flutter/material.dart';

class BlockCategoriesInstructionsModel
    extends FlutterFlowModel<BlockCategoriesInstructionsWidget> {
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
