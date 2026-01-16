import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'checkin_widget.dart' show CheckinWidget;
import 'package:flutter/material.dart';

class CheckinModel extends FlutterFlowModel<CheckinWidget> {
  ///  Local state fields for this page.

  bool uploadPic = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - pickFrontCameraImage] action in Column widget.
  FFUploadedFile? photoCamera;
  // Stores action output result for [Custom Action - getTimeZone] action in Button widget.
  String? userTimezone;
  // Stores action output result for [Backend Call - API (Checkin)] action in Button widget.
  ApiCallResponse? uploadPhotoCheckin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
