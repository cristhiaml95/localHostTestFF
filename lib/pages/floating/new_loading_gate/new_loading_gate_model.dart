import '/flutter_flow/flutter_flow_util.dart';
import 'new_loading_gate_widget.dart' show NewLoadingGateWidget;
import 'package:flutter/material.dart';

class NewLoadingGateModel extends FlutterFlowModel<NewLoadingGateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for loadingGateTF widget.
  FocusNode? loadingGateTFFocusNode;
  TextEditingController? loadingGateTFController;
  String? Function(BuildContext, String?)? loadingGateTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    loadingGateTFFocusNode?.dispose();
    loadingGateTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
