import '/flutter_flow/flutter_flow_util.dart';
import 'checkin_widget.dart' show CheckinWidget;
import 'package:flutter/material.dart';

class CheckinModel extends FlutterFlowModel<CheckinWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
