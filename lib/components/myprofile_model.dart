import '/flutter_flow/flutter_flow_util.dart';
import 'myprofile_widget.dart' show MyprofileWidget;
import 'package:flutter/material.dart';

class MyprofileModel extends FlutterFlowModel<MyprofileWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
