import '/components/menulateral_widget.dart';
import '/components/progress_shelfs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's2_block_categories_instructions_widget.dart'
    show S2BlockCategoriesInstructionsWidget;
import 'package:flutter/material.dart';

class S2BlockCategoriesInstructionsModel
    extends FlutterFlowModel<S2BlockCategoriesInstructionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Model for progressShelfs component.
  late ProgressShelfsModel progressShelfsModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
    progressShelfsModel = createModel(context, () => ProgressShelfsModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    progressShelfsModel.dispose();
  }
}
