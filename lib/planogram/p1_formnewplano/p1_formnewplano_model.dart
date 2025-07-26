import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p1_formnewplano_widget.dart' show P1FormnewplanoWidget;
import 'package:flutter/material.dart';

class P1FormnewplanoModel extends FlutterFlowModel<P1FormnewplanoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // State field(s) for pName widget.
  FocusNode? pNameFocusNode;
  TextEditingController? pNameTextController;
  String? Function(BuildContext, String?)? pNameTextControllerValidator;
  // State field(s) for pWitdtj widget.
  FocusNode? pWitdtjFocusNode;
  TextEditingController? pWitdtjTextController;
  String? Function(BuildContext, String?)? pWitdtjTextControllerValidator;
  // State field(s) for pHeight widget.
  FocusNode? pHeightFocusNode;
  TextEditingController? pHeightTextController;
  String? Function(BuildContext, String?)? pHeightTextControllerValidator;
  // State field(s) for pRows widget.
  FocusNode? pRowsFocusNode;
  TextEditingController? pRowsTextController;
  String? Function(BuildContext, String?)? pRowsTextControllerValidator;
  // State field(s) for pDepth widget.
  FocusNode? pDepthFocusNode;
  TextEditingController? pDepthTextController;
  String? Function(BuildContext, String?)? pDepthTextControllerValidator;

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    pNameFocusNode?.dispose();
    pNameTextController?.dispose();

    pWitdtjFocusNode?.dispose();
    pWitdtjTextController?.dispose();

    pHeightFocusNode?.dispose();
    pHeightTextController?.dispose();

    pRowsFocusNode?.dispose();
    pRowsTextController?.dispose();

    pDepthFocusNode?.dispose();
    pDepthTextController?.dispose();
  }
}
