import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menulateral_widget.dart';
import '/components/progress_shelfs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's1_block_categories2_widget.dart' show S1BlockCategories2Widget;
import 'package:flutter/material.dart';

class S1BlockCategories2Model
    extends FlutterFlowModel<S1BlockCategories2Widget> {
  ///  Local state fields for this page.

  dynamic routeToday;

  List<ShelfsStruct> shelfsOfDayList = [];
  void addToShelfsOfDayList(ShelfsStruct item) => shelfsOfDayList.add(item);
  void removeFromShelfsOfDayList(ShelfsStruct item) =>
      shelfsOfDayList.remove(item);
  void removeAtIndexFromShelfsOfDayList(int index) =>
      shelfsOfDayList.removeAt(index);
  void insertAtIndexInShelfsOfDayList(int index, ShelfsStruct item) =>
      shelfsOfDayList.insert(index, item);
  void updateShelfsOfDayListAtIndex(
          int index, Function(ShelfsStruct) updateFn) =>
      shelfsOfDayList[index] = updateFn(shelfsOfDayList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for menulateral component.
  late MenulateralModel menulateralModel;
  // Model for progressShelfs component.
  late ProgressShelfsModel progressShelfsModel;
  // Stores action output result for [Backend Call - API (Get route)] action in ListView widget.
  ApiCallResponse? route;
  // State field(s) for sinput_sku widget.
  FocusNode? sinputSkuFocusNode;
  TextEditingController? sinputSkuTextController;
  String? Function(BuildContext, String?)? sinputSkuTextControllerValidator;
  var barcodeMode = '';

  @override
  void initState(BuildContext context) {
    menulateralModel = createModel(context, () => MenulateralModel());
    progressShelfsModel = createModel(context, () => ProgressShelfsModel());
  }

  @override
  void dispose() {
    menulateralModel.dispose();
    progressShelfsModel.dispose();
    sinputSkuFocusNode?.dispose();
    sinputSkuTextController?.dispose();
  }
}
