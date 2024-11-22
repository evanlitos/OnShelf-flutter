import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'before_photo_diagram4_widget.dart' show BeforePhotoDiagram4Widget;
import 'package:flutter/material.dart';

class BeforePhotoDiagram4Model
    extends FlutterFlowModel<BeforePhotoDiagram4Widget> {
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
