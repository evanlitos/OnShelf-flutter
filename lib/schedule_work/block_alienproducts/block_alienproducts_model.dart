import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'block_alienproducts_widget.dart' show BlockAlienproductsWidget;
import 'package:flutter/material.dart';

class BlockAlienproductsModel
    extends FlutterFlowModel<BlockAlienproductsWidget> {
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
