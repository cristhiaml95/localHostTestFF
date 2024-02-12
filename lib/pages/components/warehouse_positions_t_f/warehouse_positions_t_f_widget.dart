import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/floating/sure_query/sure_query_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'warehouse_positions_t_f_model.dart';
export 'warehouse_positions_t_f_model.dart';

class WarehousePositionsTFWidget extends StatefulWidget {
  const WarehousePositionsTFWidget({
    super.key,
    this.rowId,
  });

  final String? rowId;

  @override
  State<WarehousePositionsTFWidget> createState() =>
      _WarehousePositionsTFWidgetState();
}

class _WarehousePositionsTFWidgetState
    extends State<WarehousePositionsTFWidget> {
  late WarehousePositionsTFModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarehousePositionsTFModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_model.editSave)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: SizedBox(
              width: 280.0,
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'bm78l3b3' /* Insert new value... */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
          ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!_model.editSave)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      _model.editSave = true;
                    });
                  },
                  child: Icon(
                    Icons.edit_square,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                ),
              ),
            if (_model.editSave)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (_model.textController.text != '') {
                      await WarehousePositionsTable().update(
                        data: {
                          'position': _model.textController.text,
                        },
                        matchingRows: (rows) => rows.eq(
                          'id',
                          widget.rowId,
                        ),
                      );
                      setState(() {
                        _model.editSave = false;
                      });
                    } else {
                      setState(() {
                        _model.editSave = false;
                      });
                    }
                  },
                  child: Icon(
                    Icons.save_sharp,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                ),
              ),
            Builder(
              builder: (context) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: const AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: SureQueryWidget(
                            saveChangesP: () async {
                              await GoodsTable().delete(
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  widget.rowId,
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Icon(
                    Icons.delete_forever_sharp,
                    color: FlutterFlowTheme.of(context).warning,
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
