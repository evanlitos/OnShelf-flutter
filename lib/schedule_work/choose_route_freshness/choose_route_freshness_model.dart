import '/backend/api_requests/api_calls.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'choose_route_freshness_widget.dart' show ChooseRouteFreshnessWidget;
import 'package:flutter/material.dart';

class ChooseRouteFreshnessModel
    extends FlutterFlowModel<ChooseRouteFreshnessWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRouteForMerchandiser)] action in ChooseRouteFreshness widget.
  ApiCallResponse? resultRouteForMerch;
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
