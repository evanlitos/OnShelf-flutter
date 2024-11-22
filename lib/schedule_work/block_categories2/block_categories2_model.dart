import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'block_categories2_widget.dart' show BlockCategories2Widget;
import 'package:flutter/material.dart';

class BlockCategories2Model extends FlutterFlowModel<BlockCategories2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
  }
}
