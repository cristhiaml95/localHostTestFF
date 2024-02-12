import '/flutter_flow/flutter_flow_util.dart';
import 'edit_packaging_widget.dart' show EditPackagingWidget;
import 'package:flutter/material.dart';

class EditPackagingModel extends FlutterFlowModel<EditPackagingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for orderNoTF widget.
  FocusNode? orderNoTFFocusNode1;
  TextEditingController? orderNoTFController1;
  String? Function(BuildContext, String?)? orderNoTFController1Validator;
  // State field(s) for orderNoTF widget.
  FocusNode? orderNoTFFocusNode2;
  TextEditingController? orderNoTFController2;
  String? Function(BuildContext, String?)? orderNoTFController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    orderNoTFFocusNode1?.dispose();
    orderNoTFController1?.dispose();

    orderNoTFFocusNode2?.dispose();
    orderNoTFController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
