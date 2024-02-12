import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/light_mode/light_mode_widget.dart';
import '/pages/components/user_details/user_details_widget.dart';
import 'dart:async';
import 'order_warehouse_widget.dart' show OrderWarehouseWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class OrderWarehouseModel extends FlutterFlowModel<OrderWarehouseWidget> {
  ///  Local state fields for this page.

  List<FixedColumnsStruct> fixedColumns = [];
  void addToFixedColumns(FixedColumnsStruct item) => fixedColumns.add(item);
  void removeFromFixedColumns(FixedColumnsStruct item) =>
      fixedColumns.remove(item);
  void removeAtIndexFromFixedColumns(int index) => fixedColumns.removeAt(index);
  void insertAtIndexInFixedColumns(int index, FixedColumnsStruct item) =>
      fixedColumns.insert(index, item);
  void updateFixedColumnsAtIndex(
          int index, Function(FixedColumnsStruct) updateFn) =>
      fixedColumns[index] = updateFn(fixedColumns[index]);

  int selectedIndex = 0;

  bool orderNoB = false;

  bool clientB = false;

  bool flowB = false;

  bool invStatusB = false;

  bool warehouseB = false;

  bool orderStatusB = false;

  bool licenceB = false;

  bool improvementB = false;

  bool palletPositionB = false;

  bool universalRefNumB = false;

  bool fmsRefB = false;

  bool loadRefDvhB = false;

  bool customB = false;

  bool goodB = false;

  bool goodDescriptionB = false;

  bool assistant1B = false;

  bool assistant2B = false;

  bool assistant3B = false;

  bool assistant4B = false;

  bool assistant5B = false;

  bool assistant6B = false;

  bool adminB = false;

  bool barcodeB = false;

  bool intCustomB = false;

  bool containerNoB = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // Model for lightMode component.
  late LightModeModel lightModeModel;
  // Model for userDetails component.
  late UserDetailsModel userDetailsModel;
  // State field(s) for orderNoDD widget.
  String? orderNoDDValue;
  FormFieldController<String>? orderNoDDValueController;
  // State field(s) for clientDD widget.
  String? clientDDValue;
  FormFieldController<String>? clientDDValueController;
  // State field(s) for invStatusDD widget.
  String? invStatusDDValue;
  FormFieldController<String>? invStatusDDValueController;
  // State field(s) for warehouseDD widget.
  String? warehouseDDValue;
  FormFieldController<String>? warehouseDDValueController;
  // State field(s) for orderStatusDD widget.
  String? orderStatusDDValue;
  FormFieldController<String>? orderStatusDDValueController;
  // State field(s) for flowDD widget.
  String? flowDDValue;
  FormFieldController<String>? flowDDValueController;
  // State field(s) for licenceDD widget.
  String? licenceDDValue;
  FormFieldController<String>? licenceDDValueController;
  // State field(s) for containerNoDD widget.
  String? containerNoDDValue;
  FormFieldController<String>? containerNoDDValueController;
  // State field(s) for improvementDD widget.
  String? improvementDDValue;
  FormFieldController<String>? improvementDDValueController;
  // State field(s) for barcodesDD widget.
  String? barcodesDDValue;
  FormFieldController<String>? barcodesDDValueController;
  // State field(s) for palletPositionDD widget.
  String? palletPositionDDValue;
  FormFieldController<String>? palletPositionDDValueController;
  // State field(s) for uniRefNumDD widget.
  String? uniRefNumDDValue;
  FormFieldController<String>? uniRefNumDDValueController;
  // State field(s) for fmsRefDD widget.
  String? fmsRefDDValue;
  FormFieldController<String>? fmsRefDDValueController;
  // State field(s) for loadRefDvhDD widget.
  String? loadRefDvhDDValue;
  FormFieldController<String>? loadRefDvhDDValueController;
  // State field(s) for customDD widget.
  String? customDDValue;
  FormFieldController<String>? customDDValueController;
  // State field(s) for goodDD widget.
  String? goodDDValue;
  FormFieldController<String>? goodDDValueController;
  // State field(s) for goodDescriptionDD widget.
  String? goodDescriptionDDValue;
  FormFieldController<String>? goodDescriptionDDValueController;
  // State field(s) for assistant1DD widget.
  String? assistant1DDValue;
  FormFieldController<String>? assistant1DDValueController;
  // State field(s) for assistant2DD widget.
  String? assistant2DDValue;
  FormFieldController<String>? assistant2DDValueController;
  // State field(s) for assistant3DD widget.
  String? assistant3DDValue;
  FormFieldController<String>? assistant3DDValueController;
  // State field(s) for assistant4DD widget.
  String? assistant4DDValue;
  FormFieldController<String>? assistant4DDValueController;
  // State field(s) for assistant5DD widget.
  String? assistant5DDValue;
  FormFieldController<String>? assistant5DDValueController;
  // State field(s) for assistant6DD widget.
  String? assistant6DDValue;
  FormFieldController<String>? assistant6DDValueController;
  // State field(s) for adminDD widget.
  String? adminDDValue;
  FormFieldController<String>? adminDDValueController;
  // State field(s) for intCustomDD widget.
  String? intCustomDDValue;
  FormFieldController<String>? intCustomDDValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VistaOrderLevelExtendedRow>();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    lightModeModel = createModel(context, () => LightModeModel());
    userDetailsModel = createModel(context, () => UserDetailsModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    lightModeModel.dispose();
    userDetailsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
