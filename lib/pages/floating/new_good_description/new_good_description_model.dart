import '/flutter_flow/flutter_flow_util.dart';
import 'new_good_description_widget.dart' show NewGoodDescriptionWidget;
import 'package:flutter/material.dart';

class NewGoodDescriptionModel
    extends FlutterFlowModel<NewGoodDescriptionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descriptionTF widget.
  FocusNode? descriptionTFFocusNode;
  TextEditingController? descriptionTFController;
  String? Function(BuildContext, String?)? descriptionTFControllerValidator;
  String? _descriptionTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dj9hrp0p' /* Field is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    descriptionTFControllerValidator = _descriptionTFControllerValidator;
  }

  @override
  void dispose() {
    descriptionTFFocusNode?.dispose();
    descriptionTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
