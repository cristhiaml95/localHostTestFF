import '/flutter_flow/flutter_flow_util.dart';
import 'documents_widget.dart' show DocumentsWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class DocumentsModel extends FlutterFlowModel<DocumentsWidget> {
  ///  Local state fields for this component.

  List<String> pdfList = [];
  void addToPdfList(String item) => pdfList.add(item);
  void removeFromPdfList(String item) => pdfList.remove(item);
  void removeAtIndexFromPdfList(int index) => pdfList.removeAt(index);
  void insertAtIndexInPdfList(int index, String item) =>
      pdfList.insert(index, item);
  void updatePdfListAtIndex(int index, Function(String) updateFn) =>
      pdfList[index] = updateFn(pdfList[index]);

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
