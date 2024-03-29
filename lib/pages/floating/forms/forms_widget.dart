import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/floating/documents/documents_widget.dart';
import '/pages/floating/sure_query/sure_query_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'forms_model.dart';
export 'forms_model.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({
    super.key,
    required this.orderId,
    String? formsKey,
    int? page,
  })  : formsKey = formsKey ?? 'formsDefKey',
        page = page ?? 0;

  final String? orderId;
  final String formsKey;
  final int page;

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  late FormsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormsModel());

    _model.orderNoTFController ??= TextEditingController();
    _model.orderNoTFFocusNode ??= FocusNode();

    _model.internalRefTController ??= TextEditingController();
    _model.internalRefTFocusNode ??= FocusNode();

    _model.internalAccTController ??= TextEditingController();
    _model.internalAccTFocusNode ??= FocusNode();

    _model.sequenceController ??= TextEditingController();
    _model.sequenceFocusNode ??= FocusNode();

    _model.licencePlateTFController ??= TextEditingController();
    _model.licencePlateTFFocusNode ??= FocusNode();

    _model.containerTController ??= TextEditingController();
    _model.containerTFocusNode ??= FocusNode();

    _model.commentTFController ??= TextEditingController();
    _model.commentTFFocusNode ??= FocusNode();

    _model.quantityTController ??= TextEditingController();
    _model.quantityTFocusNode ??= FocusNode();

    _model.palletPositionTController ??= TextEditingController();
    _model.palletPositionTFocusNode ??= FocusNode();

    _model.unitTController ??= TextEditingController();
    _model.unitTFocusNode ??= FocusNode();

    _model.weightTController ??= TextEditingController();
    _model.weightTFocusNode ??= FocusNode();

    _model.universalRefNumTController ??= TextEditingController();
    _model.universalRefNumTFocusNode ??= FocusNode();

    _model.fmsRefTController ??= TextEditingController();
    _model.fmsRefTFocusNode ??= FocusNode();

    _model.loadRefDvhTController ??= TextEditingController();
    _model.loadRefDvhTFocusNode ??= FocusNode();

    _model.barcodesTFFocusNode ??= FocusNode();

    _model.repeatedBarcodesTFFocusNode ??= FocusNode();

    _model.nonExistentBarcodesTFFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<UsersRow>>(
      future: UsersTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<UsersRow> formsUsersRowList = snapshot.data!;
        return Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: FutureBuilder<List<VistaOrderLevelExtendedRow>>(
            future: FFAppState().tables(
              uniqueQueryKey: widget.formsKey,
              requestFn: () => VistaOrderLevelExtendedTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'id',
                  widget.orderId,
                ),
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<VistaOrderLevelExtendedRow>
                  containerVistaOrderLevelExtendedRowList = snapshot.data!;
              final containerVistaOrderLevelExtendedRow =
                  containerVistaOrderLevelExtendedRowList.isNotEmpty
                      ? containerVistaOrderLevelExtendedRowList.first
                      : null;
              return Container(
                width: 1200.0,
                height: 640.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(28.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: () {
                      if (_model.page == 0) {
                        return FlutterFlowTheme.of(context).secondary;
                      } else if (_model.page == 1) {
                        return FlutterFlowTheme.of(context).success;
                      } else if (_model.page == 2) {
                        return FlutterFlowTheme.of(context).primaryText;
                      } else if (_model.page == 3) {
                        return FlutterFlowTheme.of(context).info;
                      } else {
                        return FlutterFlowTheme.of(context).warning;
                      }
                    }(),
                    width: 8.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '4w4fampe' /* Edit record */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    containerVistaOrderLevelExtendedRow
                                        ?.orderNo,
                                    '/',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.page = 0;
                              });
                              await _model.pageViewController?.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              's2ln34za' /* Announcement */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFCFE2F3),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.page = 2;
                              });
                              await _model.pageViewController?.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'ixgnt5vg' /* Vehicle, quantity */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFD9D9D9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF1F262A),
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.page = 1;
                              });
                              await _model.pageViewController?.animateToPage(
                                1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'slij6xnt' /* Time, ramp */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFD9EAD3),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF74DA7F),
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.page = 3;
                              });
                              await _model.pageViewController?.animateToPage(
                                3,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '7mz1zveh' /* Manipulations, warehouses */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFD9D2E9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.page = 4;
                              });
                              await _model.pageViewController?.animateToPage(
                                4,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '06cqog9s' /* Goods, ref. no, barcode */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFFCE5CD),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).warning,
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 40.0),
                          child: PageView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _model.pageViewController ??=
                                PageController(
                                    initialPage: min(
                                        valueOrDefault<int>(
                                          widget.page,
                                          0,
                                        ),
                                        4)),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Form(
                                key: _model.formKey2,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2fq4wgnt' /* Order No:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.orderNoTFController,
                                                focusNode:
                                                    _model.orderNoTFFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.orderNo,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFCFE2F3),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                        ),
                                                validator: _model
                                                    .orderNoTFControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ej4ffm0k' /* Client:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<List<ClientsRow>>(
                                              future: FFAppState().clients(
                                                uniqueQueryKey: widget.formsKey,
                                                requestFn: () =>
                                                    ClientsTable().queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ClientsRow>
                                                    clientDDClientsRowList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .clientDDValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.clientDDValue ??= '',
                                                  ),
                                                  options: List<String>.from(
                                                      clientDDClientsRowList
                                                          .map((e) => e.id)
                                                          .toList()),
                                                  optionLabels:
                                                      clientDDClientsRowList
                                                          .map((e) => e.client)
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                          .clientDDValue = val),
                                                  width: 280.0,
                                                  height: 50.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  hintText:
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.clientName,
                                                  searchHintText:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    'g7vc91j1' /* Search for an item... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFCFE2F3),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  hidesUnderline: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'iaur83ra' /* Input/output:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .flowDDValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'beno68e9' /* in */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4f68f0jj' /* out */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.flowDDValue = val),
                                              width: 280.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              hintText:
                                                  containerVistaOrderLevelExtendedRow
                                                      ?.flow,
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFFCFE2F3),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0pln6r7m' /* Estimated arrival:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                // etaDate
                                                final datePicked1Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          const Color(0xFFDEB6B7),
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 32.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );

                                                if (datePicked1Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked1 =
                                                        DateTime(
                                                      datePicked1Date.year,
                                                      datePicked1Date.month,
                                                      datePicked1Date.day,
                                                    );
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFCFE2F3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    _model.datePicked1 != null
                                                        ? dateTimeFormat(
                                                            'yMMMd',
                                                            _model.datePicked1,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )
                                                        : dateTimeFormat(
                                                            'yMMMd',
                                                            functions.parsePostgresTimestamp(
                                                                containerVistaOrderLevelExtendedRow!
                                                                    .etaDate!
                                                                    .toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'er1iflkk' /* Order status:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .orderStatusDDValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4mm5s45u' /* novo naročilo */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q8evheu3' /* izvajanje */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c7ae11xt' /* zaključeno */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.orderStatusDDValue =
                                                      val),
                                              width: 280.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  containerVistaOrderLevelExtendedRow
                                                      ?.orderStatus,
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFFCFE2F3),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rvm1e9wy' /* Warehouse:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<List<WarehousesRow>>(
                                              future: FFAppState().warehouses(
                                                uniqueQueryKey: widget.formsKey,
                                                requestFn: () =>
                                                    WarehousesTable().queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<WarehousesRow>
                                                    warehouseDDWarehousesRowList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .warehouseDDValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.warehouseDDValue ??=
                                                        containerVistaOrderLevelExtendedRow
                                                            ?.warehouse,
                                                  ),
                                                  options: List<String>.from(
                                                      warehouseDDWarehousesRowList
                                                          .map((e) => e.id)
                                                          .toList()),
                                                  optionLabels:
                                                      warehouseDDWarehousesRowList
                                                          .map((e) =>
                                                              e.warehouse)
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .warehouseDDValue =
                                                          val),
                                                  width: 280.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.warehouseName,
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFCFE2F3),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3s4hp8em' /* Creation date:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                // creationDate
                                                final datePicked2Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          const Color(0xFFDEB6B7),
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 32.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );

                                                if (datePicked2Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        DateTime(
                                                      datePicked2Date.year,
                                                      datePicked2Date.month,
                                                      datePicked2Date.day,
                                                    );
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFCFE2F3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.datePicked2 != null
                                                          ? dateTimeFormat(
                                                              'yMMMd',
                                                              _model
                                                                  .datePicked2,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )
                                                          : dateTimeFormat(
                                                              'yMMMd',
                                                              functions.parsePostgresTimestamp(
                                                                  containerVistaOrderLevelExtendedRow!
                                                                      .createdAt!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      'brez izbire',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n2o8wfi4' /* Admin:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .adminDDValueController ??=
                                                  FormFieldController<String>(
                                                _model.adminDDValue ??= '',
                                              ),
                                              options: List<String>.from(
                                                  formsUsersRowList
                                                      .map((e) => e.id)
                                                      .toList()),
                                              optionLabels: formsUsersRowList
                                                  .map((e) => e.lastName)
                                                  .toList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.adminDDValue = val),
                                              width: 280.0,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  '${containerVistaOrderLevelExtendedRow?.adminName} ${containerVistaOrderLevelExtendedRow?.adminLastName}',
                                              searchHintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'uh5dxl5p' /* Search for an item... */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFFCFE2F3),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              hidesUnderline: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'x6to0e7v' /* Custom:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<List<CustomsRow>>(
                                              future: FFAppState().customs(
                                                uniqueQueryKey: widget.formsKey,
                                                requestFn: () =>
                                                    CustomsTable().queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CustomsRow>
                                                    customDDCustomsRowList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .customDDValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.customDDValue ??= '',
                                                  ),
                                                  options: List<String>.from(
                                                      customDDCustomsRowList
                                                          .map((e) => e.id)
                                                          .toList()),
                                                  optionLabels:
                                                      customDDCustomsRowList
                                                          .map((e) => e.custom)
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                          .customDDValue = val),
                                                  width: 280.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.customName,
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFCFE2F3),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: AutoSizeText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'p7usehyk' /* Internal reference number - cu... */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                minFontSize: 6.0,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .internalRefTController,
                                                focusNode: _model
                                                    .internalRefTFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.internalRefCustom
                                                        ?.toString(),
                                                    'brez izbire',
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFCFE2F3),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .internalRefTControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: AutoSizeText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jruby3lr' /* Internal number - accounting: ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                minFontSize: 6.0,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .internalAccTController,
                                                focusNode: _model
                                                    .internalAccTFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.internalAccounting,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFCFE2F3),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .internalAccTControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: AutoSizeText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '52lqeszm' /* Documents:   */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  minFontSize: 6.0,
                                                ),
                                              ),
                                              Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFCFE2F3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) => Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: const AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  DocumentsWidget(
                                                                orderId: widget
                                                                    .orderId!,
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: Icon(
                                                        Icons.remove_red_eye,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Form(
                                key: _model.formKey3,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '51d0v2pi' /* Inventory status:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .inventoryStatusDDValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'd2ay29dq' /* najava */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9mqiqqmd' /* obdelava */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ak1nrnrl' /* izdano */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ck4ekony' /* zaloga */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.inventoryStatusDDValue =
                                                      val),
                                              width: 280.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: valueOrDefault<String>(
                                                containerVistaOrderLevelExtendedRow
                                                    ?.invStatus,
                                                'brez izbire',
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFFD9EAD3),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'g5m6fbuf' /* Announced time 1:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.announcedTime1T =
                                                    await actions.selectTime(
                                                  context,
                                                );

                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFD9EAD3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.announcedTime1T !=
                                                              null
                                                          ? dateTimeFormat(
                                                              'Hm',
                                                              _model
                                                                  .announcedTime1T,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )
                                                          : dateTimeFormat(
                                                              'Hm',
                                                              functions.parsePostgresTimestamp(
                                                                  containerVistaOrderLevelExtendedRow!
                                                                      .etaI!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      'brez izbire',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'uoxtbao7' /* Announced time 2:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.announcedTime2T =
                                                    await actions.selectTime(
                                                  context,
                                                );

                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFD9EAD3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.announcedTime2T !=
                                                              null
                                                          ? dateTimeFormat(
                                                              'Hm',
                                                              _model
                                                                  .announcedTime2T,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )
                                                          : dateTimeFormat(
                                                              'Hm',
                                                              functions.parsePostgresTimestamp(
                                                                  containerVistaOrderLevelExtendedRow!
                                                                      .etaF!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      'brez izbire',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'b63594nl' /* Arrival:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.arrivalT =
                                                    await actions.selectTime(
                                                  context,
                                                );

                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFD9EAD3),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.arrivalT != null
                                                          ? dateTimeFormat(
                                                              'Hm',
                                                              _model.arrivalT,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )
                                                          : dateTimeFormat(
                                                              'Hm',
                                                              functions.parsePostgresTimestamp(
                                                                  containerVistaOrderLevelExtendedRow!
                                                                      .arrival!
                                                                      .toString()),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      'brez izbire',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7pkfn8ib' /* Loading gate:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<
                                                List<LoadingGatesRow>>(
                                              future: FFAppState().loadingGates(
                                                uniqueQueryKey: widget.formsKey,
                                                requestFn: () =>
                                                    LoadingGatesTable()
                                                        .queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<LoadingGatesRow>
                                                    loadingGateDDLoadingGatesRowList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .loadingGateDDValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.loadingGateDDValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      loadingGateDDLoadingGatesRowList
                                                          .where((e) =>
                                                              e.warehouse ==
                                                              _model
                                                                  .warehouseDDValue)
                                                          .toList()
                                                          .map((e) => e.id)
                                                          .toList()),
                                                  optionLabels:
                                                      loadingGateDDLoadingGatesRowList
                                                          .where((e) =>
                                                              e.warehouse ==
                                                              _model
                                                                  .warehouseDDValue)
                                                          .toList()
                                                          .map((e) => e.ramp)
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .loadingGateDDValue =
                                                          val),
                                                  width: 280.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.loadingGateRamp,
                                                    'brez izbire',
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFD9EAD3),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ggnfr75d' /* Loading gate sequence:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.sequenceController,
                                                focusNode:
                                                    _model.sequenceFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.loadingSequence
                                                        ?.toString(),
                                                    '-1',
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFD9EAD3),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .sequenceControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5b3d3y3h' /* Start (upload/unload):   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.startT =
                                                      await actions.selectTime(
                                                    context,
                                                  );

                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: 280.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFD9EAD3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.startT != null
                                                            ? dateTimeFormat(
                                                                'Hm',
                                                                _model.startT,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )
                                                            : dateTimeFormat(
                                                                'Hm',
                                                                functions.parsePostgresTimestamp(
                                                                    containerVistaOrderLevelExtendedRow!
                                                                        .start!
                                                                        .toString()),
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                        'brez izbire',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'p0vxwlax' /* Stop (upload/unload):   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.stopT =
                                                      await actions.selectTime(
                                                    context,
                                                  );

                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: 280.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFD9EAD3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.stopT != null
                                                            ? dateTimeFormat(
                                                                'Hm',
                                                                _model.stopT,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )
                                                            : dateTimeFormat(
                                                                'Hm',
                                                                functions.parsePostgresTimestamp(
                                                                    containerVistaOrderLevelExtendedRow!
                                                                        .stop!
                                                                        .toString()),
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                        'brez izbire',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Form(
                                key: _model.formKey5,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 160.0,
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jsq2xkyk' /* Licence plate No:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 280.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .licencePlateTFController,
                                                    focusNode: _model
                                                        .licencePlateTFFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: valueOrDefault<
                                                          String>(
                                                        containerVistaOrderLevelExtendedRow
                                                            ?.licencePlate,
                                                        'brez izbire',
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .licencePlateTFControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 160.0,
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e0d8yka2' /* Improvement:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .improvementDDValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l8k0xuaf' /* kont.-20" */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4citue3o' /* kont.-40" */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4y1sq1d7' /* kont.-45" */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2572s363' /* cerada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aj0w8yyo' /* hladilnik */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'onw3427g' /* silos */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .improvementDDValue =
                                                          val),
                                                  width: 280.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.improvement,
                                                    'brez izbire',
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFD9D9D9),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 160.0,
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '241xgsk0' /* Container No:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 280.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .containerTController,
                                                    focusNode: _model
                                                        .containerTFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: valueOrDefault<
                                                          String>(
                                                        containerVistaOrderLevelExtendedRow
                                                            ?.containerNo,
                                                        'brez izbire',
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .containerTControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1luorh6t' /* Comment:   */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SizedBox(
                                                        width: 280.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .commentTFController,
                                                          focusNode: _model
                                                              .commentTFFocusNode,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                containerVistaOrderLevelExtendedRow
                                                                    ?.comment,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xFFD9D9D9),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          maxLines: 8,
                                                          validator: _model
                                                              .commentTFControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6v4a337z' /* Quantity:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: SizedBox(
                                                width: 280.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .quantityTController,
                                                  focusNode:
                                                      _model.quantityTFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.quantity
                                                          ?.toString(),
                                                      '-1',
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .quantityTControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n93uyp2z' /* Pallet position:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: SizedBox(
                                                width: 280.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .palletPositionTController,
                                                  focusNode: _model
                                                      .palletPositionTFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.palletPosition
                                                          ?.toString(),
                                                      'brez izbire',
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .palletPositionTControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'bbrh0h2w' /* Pre - Check:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: 296.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Switch.adaptive(
                                                value: _model.preCheckValue ??=
                                                    containerVistaOrderLevelExtendedRow!
                                                        .precheck!,
                                                onChanged: (newValue) async {
                                                  setState(() =>
                                                      _model.preCheckValue =
                                                          newValue);
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                inactiveThumbColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8c0v3o3c' /* Check:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: 296.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Switch.adaptive(
                                                value: _model.checkValue ??=
                                                    containerVistaOrderLevelExtendedRow!
                                                        .checked!,
                                                onChanged: (newValue) async {
                                                  setState(() => _model
                                                      .checkValue = newValue);
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                inactiveThumbColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'x7scfgzz' /* Unit:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: SizedBox(
                                                width: 280.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.unitTController,
                                                  focusNode:
                                                      _model.unitTFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.unit
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .unitTControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3lpe3obr' /* Weight:   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: SizedBox(
                                                width: 280.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.weightTController,
                                                  focusNode:
                                                      _model.weightTFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.weight
                                                          ?.toString(),
                                                      '-1',
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .weightTControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'swxjzyjy' /* Other manipulations:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .otherManipulationDDValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1nhh5v4p' /* paletiranje */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0hdkxipi' /* čiščenje */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'dicagqab' /* ovijanje-folija */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jvt03f0c' /* povezovanje */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .otherManipulationDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.otherManipulation,
                                                      'brez izbire',
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'k3bvaxvd' /* Type of un/upload:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .loadTypeDDValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c1g1mv1p' /* viličar */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xt5iyzud' /* ročno */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .loadTypeDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.loadingType,
                                                      'brez izbire',
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4ys80k7p' /* Type of un/upload 2:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .loadType2DDValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'dfdjkscf' /* viličar */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gaxkwc6b' /* ročno */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .loadType2DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.loadingType2,
                                                      'brez izbire',
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nnew7c7t' /* Responsible:  */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .responsibleDDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.responsibleDDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .responsibleDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.responsibleName} ${containerVistaOrderLevelExtendedRow?.responsibleLastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '5j26f3oh' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rxkrrxst' /* Assistant 1:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant1DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant1DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant1DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant1Name} ${containerVistaOrderLevelExtendedRow?.assistant1LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'w00it0yk' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'odfaa90q' /* Assistant 2:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant2DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant2DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant2DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant2Name} ${containerVistaOrderLevelExtendedRow?.assistant2LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '86gnzb1r' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '42o4cwkv' /* Assistant 3:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant3DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant3DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant3DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant3Name} ${containerVistaOrderLevelExtendedRow?.assistant3LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'y9wemh7m' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AutoSizeText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'uxlc78ll' /* Assistant 4:   */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                          minFontSize: 6.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant4DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant4DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant4DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant4Name} ${containerVistaOrderLevelExtendedRow?.assistant4LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'cyhz6mld' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AutoSizeText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'dh2jv6vo' /* Assistant 5:   */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                          minFontSize: 6.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant5DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant5DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant5DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant5Name} ${containerVistaOrderLevelExtendedRow?.assistant5LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2rezj3dd' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AutoSizeText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'iigw54yp' /* Assistant 6:   */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                          minFontSize: 6.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .assistant6DDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.assistant6DDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        formsUsersRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        formsUsersRowList
                                                            .map((e) =>
                                                                e.lastName)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .assistant6DDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '${containerVistaOrderLevelExtendedRow?.assistant6Name} ${containerVistaOrderLevelExtendedRow?.assistant6LastName}',
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'gvqo5j88' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFD9D2E9),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Form(
                                key: _model.formKey4,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 280.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '27brn9o8' /* Universal ref num:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .universalRefNumTController,
                                                focusNode: _model
                                                    .universalRefNumTFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.universalRefNo,
                                                    'brez izbire',
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFFCE5CD),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .universalRefNumTControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 280.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w2vc2fpp' /* FMS ref:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.fmsRefTController,
                                                focusNode:
                                                    _model.fmsRefTFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.fmsRef,
                                                    'brez izbire',
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFFCE5CD),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .fmsRefTControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 280.0,
                                              height: 50.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qx5ac8t1' /* Load ref/dvh:   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 280.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .loadRefDvhTController,
                                                focusNode:
                                                    _model.loadRefDvhTFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      valueOrDefault<String>(
                                                    containerVistaOrderLevelExtendedRow
                                                        ?.loadRefDvh,
                                                    'brez izbire',
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFFCE5CD),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .loadRefDvhTControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xcuhjh74' /* Good:   */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FutureBuilder<List<GoodsRow>>(
                                                future: GoodsTable().queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<GoodsRow>
                                                      goodsDDGoodsRowList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .goodsDDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.goodsDDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        goodsDDGoodsRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        goodsDDGoodsRowList
                                                            .map((e) => e.item)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .goodsDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.item,
                                                      'brez izbire',
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'nstuvhay' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFFCE5CD),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6f042ri4' /* Good description:   */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FutureBuilder<
                                                  List<GoodDescriptionsRow>>(
                                                future: GoodDescriptionsTable()
                                                    .queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<GoodDescriptionsRow>
                                                      goodDescriptionsDDGoodDescriptionsRowList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .goodDescriptionsDDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.goodDescriptionsDDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        goodDescriptionsDDGoodDescriptionsRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        goodDescriptionsDDGoodDescriptionsRowList
                                                            .map((e) =>
                                                                e.opisBlaga)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .goodDescriptionsDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.opisBlaga,
                                                      'brez izbire',
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '4wmarb3r' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFFCE5CD),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 280.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '18qvpp0q' /* Packaging:   */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FutureBuilder<List<PackagingRow>>(
                                                future: FFAppState().packagings(
                                                  uniqueQueryKey:
                                                      widget.formsKey,
                                                  requestFn: () =>
                                                      PackagingTable()
                                                          .queryRows(
                                                    queryFn: (q) => q,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<PackagingRow>
                                                      packagingDDPackagingRowList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .packagingDDValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.packagingDDValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        packagingDDPackagingRowList
                                                            .map((e) => e.id)
                                                            .toList()),
                                                    optionLabels:
                                                        packagingDDPackagingRowList
                                                            .map((e) =>
                                                                e.packaging)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .packagingDDValue =
                                                            val),
                                                    width: 280.0,
                                                    height: 50.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        valueOrDefault<String>(
                                                      containerVistaOrderLevelExtendedRow
                                                          ?.packagingName,
                                                      'brez izbire',
                                                    ),
                                                    searchHintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2gywf2o3' /* Search for an item... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFFCE5CD),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    hidesUnderline: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'spunb0qj' /* Barcodes:   */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 280.0,
                                                height: 200.0,
                                                decoration: const BoxDecoration(),
                                                child: SizedBox(
                                                  width: 280.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                            .barcodesTFController ??=
                                                        TextEditingController(
                                                      text: functions.joinStrings(
                                                          containerVistaOrderLevelExtendedRow!
                                                              .barcodeList
                                                              .toList()),
                                                    ),
                                                    focusNode: _model
                                                        .barcodesTFFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'x1apz81p' /* Insert new value... */,
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFFCE5CD),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    maxLines: 50,
                                                    validator: _model
                                                        .barcodesTFControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 80.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm7gpyzpy' /* Repeated barcodes:   */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 280.0,
                                                height: 80.0,
                                                decoration: const BoxDecoration(),
                                                child: SizedBox(
                                                  width: 280.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                            .repeatedBarcodesTFController ??=
                                                        TextEditingController(
                                                      text: functions.joinStrings(
                                                          containerVistaOrderLevelExtendedRow!
                                                              .repeatedBarcodes
                                                              .toList()),
                                                    ),
                                                    focusNode: _model
                                                        .repeatedBarcodesTFFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        's7iw07q6' /* Insert new value... */,
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFFCE5CD),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    maxLines: 50,
                                                    validator: _model
                                                        .repeatedBarcodesTFControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 160.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 80.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u3jax3cb' /* Non-existent barcodes:   */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 280.0,
                                                height: 80.0,
                                                decoration: const BoxDecoration(),
                                                child: SizedBox(
                                                  width: 280.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                            .nonExistentBarcodesTFController ??=
                                                        TextEditingController(
                                                      text: functions.joinStrings(
                                                          containerVistaOrderLevelExtendedRow!
                                                              .noBarcodes
                                                              .toList()),
                                                    ),
                                                    focusNode: _model
                                                        .nonExistentBarcodesTFFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'wh7caubp' /* Insert new value... */,
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFFCE5CD),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    maxLines: 50,
                                                    validator: _model
                                                        .nonExistentBarcodesTFControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  _model.unitLast = _model.unitTController.text != ''
                                      ? int.parse(_model.unitTController.text)
                                      : containerVistaOrderLevelExtendedRow!
                                          .unit!;
                                  _model.numberOfBarcodes = functions
                                      .splitBarcodes(
                                          _model.barcodesTFController.text)
                                      .length;
                                });
                                if (_model.unitLast >=
                                    _model.numberOfBarcodes) {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: SureQueryWidget(
                                          saveChangesP: () async {
                                            await OrderLevelTable().update(
                                              data: {
                                                'inv_status': _model
                                                                .inventoryStatusDDValue !=
                                                            null &&
                                                        _model.inventoryStatusDDValue !=
                                                            ''
                                                    ? _model
                                                        .inventoryStatusDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.invStatus,
                                                'order_no': _model.orderNoTFController
                                                                .text !=
                                                            ''
                                                    ? _model.orderNoTFController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.orderNo,
                                                'flow': _model.flowDDValue !=
                                                            null &&
                                                        _model.flowDDValue != ''
                                                    ? _model.flowDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.flow,
                                                'order_status': _model
                                                                .orderStatusDDValue !=
                                                            null &&
                                                        _model.orderStatusDDValue !=
                                                            ''
                                                    ? _model.orderStatusDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.orderStatus,
                                                'admin': _model.adminDDValue !=
                                                            null &&
                                                        _model.adminDDValue !=
                                                            ''
                                                    ? _model.adminDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.admin,
                                                'warehouse': _model
                                                                .warehouseDDValue !=
                                                            null &&
                                                        _model.warehouseDDValue !=
                                                            ''
                                                    ? _model.warehouseDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.warehouse,
                                                'eta_date': supaSerialize<
                                                    DateTime>(_model.datePicked1 ?? containerVistaOrderLevelExtendedRow
                                                        ?.etaDate),
                                                'eta_i': supaSerialize<
                                                    PostgresTime>(PostgresTime(_model.announcedTime1T ?? functions
                                                        .parsePostgresTimestamp(
                                                            containerVistaOrderLevelExtendedRow!
                                                                .etaI!
                                                                .toString()))),
                                                'eta_f': supaSerialize<
                                                    PostgresTime>(PostgresTime(_model.announcedTime2T ?? functions
                                                        .parsePostgresTimestamp(
                                                            containerVistaOrderLevelExtendedRow!
                                                                .etaF!
                                                                .toString()))),
                                                'arrival': supaSerialize<
                                                    PostgresTime>(PostgresTime(_model.arrivalT ?? functions
                                                        .parsePostgresTimestamp(
                                                            containerVistaOrderLevelExtendedRow!
                                                                .arrival!
                                                                .toString()))),
                                                'loading_gate': _model
                                                                .loadingGateDDValue !=
                                                            null &&
                                                        _model.loadingGateDDValue !=
                                                            ''
                                                    ? _model.loadingGateDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.loadingGate,
                                                'loading_sequence': _model.sequenceController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .sequenceController
                                                        .text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.loadingSequence,
                                                'start': supaSerialize<
                                                    PostgresTime>(PostgresTime(_model.startT ?? functions
                                                        .parsePostgresTimestamp(
                                                            containerVistaOrderLevelExtendedRow!
                                                                .start!
                                                                .toString()))),
                                                'stop': supaSerialize<
                                                    PostgresTime>(PostgresTime(_model.stopT ?? functions
                                                        .parsePostgresTimestamp(
                                                            containerVistaOrderLevelExtendedRow!
                                                                .stop!
                                                                .toString()))),
                                                'licence_plate': _model.licencePlateTFController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .licencePlateTFController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.licencePlate,
                                                'quantity': _model.quantityTController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .quantityTController
                                                        .text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.quantity,
                                                'pallet_position': _model.palletPositionTController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .palletPositionTController
                                                        .text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.palletPosition,
                                                'unit': _model.unitTController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .unitTController.text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.unit,
                                                'weight': _model.weightTController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .weightTController.text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.weight,
                                                'container_no': _model.containerTController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .containerTController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.containerNo,
                                                'custom': _model.customDDValue !=
                                                            null &&
                                                        _model.customDDValue !=
                                                            ''
                                                    ? _model.customDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.custom,
                                                'responsible': _model
                                                                .responsibleDDValue !=
                                                            null &&
                                                        _model.responsibleDDValue !=
                                                            ''
                                                    ? _model.responsibleDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.responsible,
                                                'assistant1': _model
                                                                .assistant1DDValue !=
                                                            null &&
                                                        _model.assistant1DDValue !=
                                                            ''
                                                    ? _model.assistant1DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant1,
                                                'assistant2': _model
                                                                .assistant2DDValue !=
                                                            null &&
                                                        _model.assistant2DDValue !=
                                                            ''
                                                    ? _model.assistant2DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant2,
                                                'assistant3': _model
                                                                .assistant3DDValue !=
                                                            null &&
                                                        _model.assistant3DDValue !=
                                                            ''
                                                    ? _model.assistant3DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant3,
                                                'assistant4': _model
                                                                .assistant4DDValue !=
                                                            null &&
                                                        _model.assistant4DDValue !=
                                                            ''
                                                    ? _model.assistant4DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant4,
                                                'assistant5': _model
                                                                .assistant5DDValue !=
                                                            null &&
                                                        _model.assistant5DDValue !=
                                                            ''
                                                    ? _model.assistant5DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant5,
                                                'assistant6': _model
                                                                .assistant6DDValue !=
                                                            null &&
                                                        _model.assistant6DDValue !=
                                                            ''
                                                    ? _model.assistant6DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.assistant6,
                                                'fms_ref': _model.fmsRefTController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .fmsRefTController.text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.fmsRef,
                                                'load_ref_dvh': _model.loadRefDvhTController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .loadRefDvhTController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.loadRefDvh,
                                                'universal_ref_no': _model.universalRefNumTController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .universalRefNumTController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.universalRefNo,
                                                'comment': _model.commentTFController
                                                                .text !=
                                                            ''
                                                    ? _model.commentTFController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.comment,
                                                'loading_type': _model
                                                                .loadTypeDDValue !=
                                                            null &&
                                                        _model.loadTypeDDValue !=
                                                            ''
                                                    ? _model.loadTypeDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.loadingType,
                                                'loading_type2': _model
                                                                .loadType2DDValue !=
                                                            null &&
                                                        _model.loadType2DDValue !=
                                                            ''
                                                    ? _model.loadType2DDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.loadingType2,
                                                'internal_accounting': _model
                                                                .internalAccTController
                                                                .text !=
                                                            ''
                                                    ? _model
                                                        .internalAccTController
                                                        .text
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.internalAccounting,
                                                'internal_ref_custom': _model.internalRefTController
                                                                .text !=
                                                            ''
                                                    ? int.tryParse(_model
                                                        .internalRefTController
                                                        .text)
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.internalRefCustom,
                                                'client': _model.clientDDValue !=
                                                            null &&
                                                        _model.clientDDValue !=
                                                            ''
                                                    ? _model.clientDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.client,
                                                'improvement': _model
                                                                .improvementDDValue !=
                                                            null &&
                                                        _model.improvementDDValue !=
                                                            ''
                                                    ? _model.improvementDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.improvement,
                                                'other_manipulation': _model
                                                                .otherManipulationDDValue !=
                                                            null &&
                                                        _model.otherManipulationDDValue !=
                                                            ''
                                                    ? _model
                                                        .otherManipulationDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.otherManipulation,
                                                'good': _model.goodsDDValue !=
                                                            null &&
                                                        _model.goodsDDValue !=
                                                            ''
                                                    ? _model.goodsDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.good,
                                                'good_description': _model
                                                                .goodDescriptionsDDValue !=
                                                            null &&
                                                        _model.goodDescriptionsDDValue !=
                                                            ''
                                                    ? _model
                                                        .goodDescriptionsDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.goodDescription,
                                                'packaging': _model
                                                                .packagingDDValue !=
                                                            null &&
                                                        _model.packagingDDValue !=
                                                            ''
                                                    ? _model.packagingDDValue
                                                    : containerVistaOrderLevelExtendedRow
                                                        ?.packaging,
                                                'checked': _model.checkValue,
                                                'precheck':
                                                    _model.preCheckValue,
                                                'received_barcodes': functions
                                                    .splitBarcodes(_model
                                                        .barcodesTFController
                                                        .text),
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                widget.orderId,
                                              ),
                                            );
                                            await Future.delayed(const Duration(
                                                milliseconds: 500));
                                          },
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(
                                      () => _model.sureQueryOP = value));

                                  if (_model.sureQueryOP!) {
                                    Navigator.pop(context);
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'The value of unit is less than the number of barcodes.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'kgb68azj' /* Save changes */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
