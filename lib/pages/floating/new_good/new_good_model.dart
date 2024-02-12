import '/flutter_flow/flutter_flow_util.dart';
import 'new_good_widget.dart' show NewGoodWidget;
import 'package:flutter/material.dart';

class NewGoodModel extends FlutterFlowModel<NewGoodWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for goodTF widget.
  FocusNode? goodTFFocusNode;
  TextEditingController? goodTFController;
  String? Function(BuildContext, String?)? goodTFControllerValidator;
  String? _goodTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sq2f2k0w' /* Field is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    goodTFControllerValidator = _goodTFControllerValidator;
  }

  @override
  void dispose() {
    goodTFFocusNode?.dispose();
    goodTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
