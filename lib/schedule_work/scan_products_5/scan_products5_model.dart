import '/flutter_flow/flutter_flow_util.dart';
import 'scan_products5_widget.dart' show ScanProducts5Widget;
import 'package:flutter/material.dart';

class ScanProducts5Model extends FlutterFlowModel<ScanProducts5Widget> {
  ///  Local state fields for this page.

  List<String> nItems = [];
  void addToNItems(String item) => nItems.add(item);
  void removeFromNItems(String item) => nItems.remove(item);
  void removeAtIndexFromNItems(int index) => nItems.removeAt(index);
  void insertAtIndexInNItems(int index, String item) =>
      nItems.insert(index, item);
  void updateNItemsAtIndex(int index, Function(String) updateFn) =>
      nItems[index] = updateFn(nItems[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();
  }
}
