import '/flutter_flow/flutter_flow_util.dart';
import 'new_manipulation_widget.dart' show NewManipulationWidget;
import 'package:flutter/material.dart';

class NewManipulationModel extends FlutterFlowModel<NewManipulationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for manipulationTF widget.
  FocusNode? manipulationTFFocusNode;
  TextEditingController? manipulationTFController;
  String? Function(BuildContext, String?)? manipulationTFControllerValidator;
  String? _manipulationTFControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tsup8plf' /* Field is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    manipulationTFControllerValidator = _manipulationTFControllerValidator;
  }

  @override
  void dispose() {
    manipulationTFFocusNode?.dispose();
    manipulationTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
