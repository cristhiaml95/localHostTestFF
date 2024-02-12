import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_loading_gate1_widget.dart' show NewLoadingGate1Widget;
import 'package:flutter/material.dart';

class NewLoadingGate1Model extends FlutterFlowModel<NewLoadingGate1Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for warehouseDD widget.
  String? warehouseDDValue;
  FormFieldController<String>? warehouseDDValueController;
  // State field(s) for rampTF widget.
  FocusNode? rampTFFocusNode;
  TextEditingController? rampTFController;
  String? Function(BuildContext, String?)? rampTFControllerValidator;
  String? _rampTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lwps3dsm' /* Field is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    rampTFControllerValidator = _rampTFControllerValidator;
  }

  @override
  void dispose() {
    rampTFFocusNode?.dispose();
    rampTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
