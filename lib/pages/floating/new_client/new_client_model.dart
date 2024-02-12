import '/flutter_flow/flutter_flow_util.dart';
import 'new_client_widget.dart' show NewClientWidget;
import 'package:flutter/material.dart';

class NewClientModel extends FlutterFlowModel<NewClientWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for clientTF widget.
  FocusNode? clientTFFocusNode;
  TextEditingController? clientTFController;
  String? Function(BuildContext, String?)? clientTFControllerValidator;
  String? _clientTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h1eq3lya' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for addressTF widget.
  FocusNode? addressTFFocusNode;
  TextEditingController? addressTFController;
  String? Function(BuildContext, String?)? addressTFControllerValidator;
  // State field(s) for cityTF widget.
  FocusNode? cityTFFocusNode;
  TextEditingController? cityTFController;
  String? Function(BuildContext, String?)? cityTFControllerValidator;
  // State field(s) for countryTF widget.
  FocusNode? countryTFFocusNode;
  TextEditingController? countryTFController;
  String? Function(BuildContext, String?)? countryTFControllerValidator;
  // State field(s) for nameAissTF widget.
  FocusNode? nameAissTFFocusNode;
  TextEditingController? nameAissTFController;
  String? Function(BuildContext, String?)? nameAissTFControllerValidator;
  // State field(s) for vatNoTF widget.
  FocusNode? vatNoTFFocusNode;
  TextEditingController? vatNoTFController;
  String? Function(BuildContext, String?)? vatNoTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    clientTFControllerValidator = _clientTFControllerValidator;
  }

  @override
  void dispose() {
    clientTFFocusNode?.dispose();
    clientTFController?.dispose();

    addressTFFocusNode?.dispose();
    addressTFController?.dispose();

    cityTFFocusNode?.dispose();
    cityTFController?.dispose();

    countryTFFocusNode?.dispose();
    countryTFController?.dispose();

    nameAissTFFocusNode?.dispose();
    nameAissTFController?.dispose();

    vatNoTFFocusNode?.dispose();
    vatNoTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
