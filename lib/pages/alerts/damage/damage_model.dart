import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'damage_widget.dart' show DamageWidget;
import 'package:flutter/material.dart';

class DamageModel extends FlutterFlowModel<DamageWidget> {
  ///  Local state fields for this component.

  ProductsStruct? product;
  void updateProductStruct(Function(ProductsStruct) updateFn) {
    updateFn(product ??= ProductsStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for total widget.
  FocusNode? totalFocusNode;
  TextEditingController? totalTextController;
  String? Function(BuildContext, String?)? totalTextControllerValidator;
  // State field(s) for m1 widget.
  FocusNode? m1FocusNode;
  TextEditingController? m1TextController;
  String? Function(BuildContext, String?)? m1TextControllerValidator;
  // State field(s) for m2 widget.
  FocusNode? m2FocusNode;
  TextEditingController? m2TextController;
  String? Function(BuildContext, String?)? m2TextControllerValidator;
  // State field(s) for m3 widget.
  FocusNode? m3FocusNode;
  TextEditingController? m3TextController;
  String? Function(BuildContext, String?)? m3TextControllerValidator;
  // State field(s) for m4 widget.
  FocusNode? m4FocusNode;
  TextEditingController? m4TextController;
  String? Function(BuildContext, String?)? m4TextControllerValidator;
  // State field(s) for m5 widget.
  FocusNode? m5FocusNode;
  TextEditingController? m5TextController;
  String? Function(BuildContext, String?)? m5TextControllerValidator;
  // State field(s) for m6 widget.
  FocusNode? m6FocusNode;
  TextEditingController? m6TextController;
  String? Function(BuildContext, String?)? m6TextControllerValidator;
  // State field(s) for mm widget.
  FocusNode? mmFocusNode;
  TextEditingController? mmTextController;
  String? Function(BuildContext, String?)? mmTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    totalFocusNode?.dispose();
    totalTextController?.dispose();

    m1FocusNode?.dispose();
    m1TextController?.dispose();

    m2FocusNode?.dispose();
    m2TextController?.dispose();

    m3FocusNode?.dispose();
    m3TextController?.dispose();

    m4FocusNode?.dispose();
    m4TextController?.dispose();

    m5FocusNode?.dispose();
    m5TextController?.dispose();

    m6FocusNode?.dispose();
    m6TextController?.dispose();

    mmFocusNode?.dispose();
    mmTextController?.dispose();
  }
}
