import '/flutter_flow/flutter_flow_util.dart';
import 'new_custom_widget.dart' show NewCustomWidget;
import 'package:flutter/material.dart';

class NewCustomModel extends FlutterFlowModel<NewCustomWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for customTF widget.
  FocusNode? customTFFocusNode;
  TextEditingController? customTFController;
  String? Function(BuildContext, String?)? customTFControllerValidator;
  String? _customTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'u5vics5e' /* Field is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customTFControllerValidator = _customTFControllerValidator;
  }

  @override
  void dispose() {
    customTFFocusNode?.dispose();
    customTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
