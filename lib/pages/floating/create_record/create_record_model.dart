import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_record_widget.dart' show CreateRecordWidget;
import 'package:flutter/material.dart';

class CreateRecordModel extends FlutterFlowModel<CreateRecordWidget> {
  ///  Local state fields for this component.

  int page = 0;

  List<String> barcodesList = [];
  void addToBarcodesList(String item) => barcodesList.add(item);
  void removeFromBarcodesList(String item) => barcodesList.remove(item);
  void removeAtIndexFromBarcodesList(int index) => barcodesList.removeAt(index);
  void insertAtIndexInBarcodesList(int index, String item) =>
      barcodesList.insert(index, item);
  void updateBarcodesListAtIndex(int index, Function(String) updateFn) =>
      barcodesList[index] = updateFn(barcodesList[index]);

  List<String> pdfLinks = [];
  void addToPdfLinks(String item) => pdfLinks.add(item);
  void removeFromPdfLinks(String item) => pdfLinks.remove(item);
  void removeAtIndexFromPdfLinks(int index) => pdfLinks.removeAt(index);
  void insertAtIndexInPdfLinks(int index, String item) =>
      pdfLinks.insert(index, item);
  void updatePdfLinksAtIndex(int index, Function(String) updateFn) =>
      pdfLinks[index] = updateFn(pdfLinks[index]);

  int unitLast = 0;

  int numberOfBarcodes = 0;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for orderNoTF widget.
  FocusNode? orderNoTFFocusNode;
  TextEditingController? orderNoTFController;
  String? Function(BuildContext, String?)? orderNoTFControllerValidator;
  // State field(s) for clientDD widget.
  String? clientDDValue;
  FormFieldController<String>? clientDDValueController;
  // State field(s) for flowDD widget.
  String? flowDDValue;
  FormFieldController<String>? flowDDValueController;
  DateTime? datePicked1;
  // State field(s) for orderStatusDD widget.
  String? orderStatusDDValue;
  FormFieldController<String>? orderStatusDDValueController;
  // State field(s) for warehouseDD widget.
  String? warehouseDDValue;
  FormFieldController<String>? warehouseDDValueController;
  DateTime? datePicked2;
  // State field(s) for adminDD widget.
  String? adminDDValue;
  FormFieldController<String>? adminDDValueController;
  // State field(s) for customDD widget.
  String? customDDValue;
  FormFieldController<String>? customDDValueController;
  // State field(s) for internalRefT widget.
  FocusNode? internalRefTFocusNode;
  TextEditingController? internalRefTController;
  String? Function(BuildContext, String?)? internalRefTControllerValidator;
  // State field(s) for internalAccT widget.
  FocusNode? internalAccTFocusNode;
  TextEditingController? internalAccTController;
  String? Function(BuildContext, String?)? internalAccTControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for inventoryStatusDD widget.
  String? inventoryStatusDDValue;
  FormFieldController<String>? inventoryStatusDDValueController;
  // Stores action output result for [Custom Action - selectTime] action in Container widget.
  DateTime? announcedTime1;
  // Stores action output result for [Custom Action - selectTime] action in Container widget.
  DateTime? announcedTime2;
  // Stores action output result for [Custom Action - selectTime] action in Container widget.
  DateTime? arrivalTime;
  // State field(s) for loadingGateDD widget.
  String? loadingGateDDValue;
  FormFieldController<String>? loadingGateDDValueController;
  // State field(s) for sequence widget.
  FocusNode? sequenceFocusNode;
  TextEditingController? sequenceController;
  String? Function(BuildContext, String?)? sequenceControllerValidator;
  // Stores action output result for [Custom Action - selectTime] action in Container widget.
  DateTime? startT;
  // Stores action output result for [Custom Action - selectTime] action in Container widget.
  DateTime? stopT;
  // State field(s) for licencePlateTF widget.
  FocusNode? licencePlateTFFocusNode;
  TextEditingController? licencePlateTFController;
  String? Function(BuildContext, String?)? licencePlateTFControllerValidator;
  // State field(s) for improvementDD widget.
  String? improvementDDValue;
  FormFieldController<String>? improvementDDValueController;
  // State field(s) for containerT widget.
  FocusNode? containerTFocusNode;
  TextEditingController? containerTController;
  String? Function(BuildContext, String?)? containerTControllerValidator;
  // State field(s) for commentTF widget.
  FocusNode? commentTFFocusNode;
  TextEditingController? commentTFController;
  String? Function(BuildContext, String?)? commentTFControllerValidator;
  // State field(s) for quantityT widget.
  FocusNode? quantityTFocusNode;
  TextEditingController? quantityTController;
  String? Function(BuildContext, String?)? quantityTControllerValidator;
  // State field(s) for palletPositionT widget.
  FocusNode? palletPositionTFocusNode;
  TextEditingController? palletPositionTController;
  String? Function(BuildContext, String?)? palletPositionTControllerValidator;
  // State field(s) for unitT widget.
  FocusNode? unitTFocusNode;
  TextEditingController? unitTController;
  String? Function(BuildContext, String?)? unitTControllerValidator;
  // State field(s) for weightT widget.
  FocusNode? weightTFocusNode;
  TextEditingController? weightTController;
  String? Function(BuildContext, String?)? weightTControllerValidator;
  // State field(s) for otherManipulationDD widget.
  String? otherManipulationDDValue;
  FormFieldController<String>? otherManipulationDDValueController;
  // State field(s) for loadTypeDD widget.
  String? loadTypeDDValue;
  FormFieldController<String>? loadTypeDDValueController;
  // State field(s) for loadType2DD widget.
  String? loadType2DDValue;
  FormFieldController<String>? loadType2DDValueController;
  // State field(s) for responsibleDD widget.
  String? responsibleDDValue;
  FormFieldController<String>? responsibleDDValueController;
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
  // State field(s) for universalRefNumT widget.
  FocusNode? universalRefNumTFocusNode;
  TextEditingController? universalRefNumTController;
  String? Function(BuildContext, String?)? universalRefNumTControllerValidator;
  // State field(s) for fmsRefT widget.
  FocusNode? fmsRefTFocusNode;
  TextEditingController? fmsRefTController;
  String? Function(BuildContext, String?)? fmsRefTControllerValidator;
  // State field(s) for loadRefDvhT widget.
  FocusNode? loadRefDvhTFocusNode;
  TextEditingController? loadRefDvhTController;
  String? Function(BuildContext, String?)? loadRefDvhTControllerValidator;
  // State field(s) for goodsDD widget.
  String? goodsDDValue;
  FormFieldController<String>? goodsDDValueController;
  // State field(s) for goodDescriptionsDD widget.
  String? goodDescriptionsDDValue;
  FormFieldController<String>? goodDescriptionsDDValueController;
  // State field(s) for packagingDD widget.
  String? packagingDDValue;
  FormFieldController<String>? packagingDDValueController;
  // State field(s) for barcodesTF widget.
  FocusNode? barcodesTFFocusNode;
  TextEditingController? barcodesTFController;
  String? Function(BuildContext, String?)? barcodesTFControllerValidator;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? sureQueryOP;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrderLevelRow? insertedRowOP;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    orderNoTFFocusNode?.dispose();
    orderNoTFController?.dispose();

    internalRefTFocusNode?.dispose();
    internalRefTController?.dispose();

    internalAccTFocusNode?.dispose();
    internalAccTController?.dispose();

    sequenceFocusNode?.dispose();
    sequenceController?.dispose();

    licencePlateTFFocusNode?.dispose();
    licencePlateTFController?.dispose();

    containerTFocusNode?.dispose();
    containerTController?.dispose();

    commentTFFocusNode?.dispose();
    commentTFController?.dispose();

    quantityTFocusNode?.dispose();
    quantityTController?.dispose();

    palletPositionTFocusNode?.dispose();
    palletPositionTController?.dispose();

    unitTFocusNode?.dispose();
    unitTController?.dispose();

    weightTFocusNode?.dispose();
    weightTController?.dispose();

    universalRefNumTFocusNode?.dispose();
    universalRefNumTController?.dispose();

    fmsRefTFocusNode?.dispose();
    fmsRefTController?.dispose();

    loadRefDvhTFocusNode?.dispose();
    loadRefDvhTController?.dispose();

    barcodesTFFocusNode?.dispose();
    barcodesTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
