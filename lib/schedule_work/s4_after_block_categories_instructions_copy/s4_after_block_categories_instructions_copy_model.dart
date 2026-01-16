import '/components/menulateral_widget.dart';
import '/components/progress_shelfs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's4_after_block_categories_instructions_copy_widget.dart'
    show S4AfterBlockCategoriesInstructionsCopyWidget;
import 'package:flutter/material.dart';

class S4AfterBlockCategoriesInstructionsCopyModel
    extends FlutterFlowModel<S4AfterBlockCategoriesInstructionsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Model for progressShelfs component.
  late ProgressShelfsModel progressShelfsModel;
  bool isDataUploading_afterPhoto = false;
  FFUploadedFile uploadedLocalFile_afterPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

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
