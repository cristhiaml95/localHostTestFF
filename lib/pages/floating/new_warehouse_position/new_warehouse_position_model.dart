import '/flutter_flow/flutter_flow_util.dart';
import 'new_warehouse_position_widget.dart' show NewWarehousePositionWidget;
import 'package:flutter/material.dart';

class NewWarehousePositionModel
    extends FlutterFlowModel<NewWarehousePositionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for warehousePositionTF widget.
  FocusNode? warehousePositionTFFocusNode;
  TextEditingController? warehousePositionTFController;
  String? Function(BuildContext, String?)?
      warehousePositionTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    warehousePositionTFFocusNode?.dispose();
    warehousePositionTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
