import '/flutter_flow/flutter_flow_util.dart';
import 'new_packaging_widget.dart' show NewPackagingWidget;
import 'package:flutter/material.dart';

class NewPackagingModel extends FlutterFlowModel<NewPackagingWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for packagingTF widget.
  FocusNode? packagingTFFocusNode;
  TextEditingController? packagingTFController;
  String? Function(BuildContext, String?)? packagingTFControllerValidator;
  String? _packagingTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pmyl2hn9' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for abbreviationTF widget.
  FocusNode? abbreviationTFFocusNode;
  TextEditingController? abbreviationTFController;
  String? Function(BuildContext, String?)? abbreviationTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    packagingTFControllerValidator = _packagingTFControllerValidator;
  }

  @override
  void dispose() {
    packagingTFFocusNode?.dispose();
    packagingTFController?.dispose();

    abbreviationTFFocusNode?.dispose();
    abbreviationTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
