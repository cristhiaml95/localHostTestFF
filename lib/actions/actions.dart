import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';

Future startingPage(BuildContext context) async {
  ApiCallResponse? apiClientsOP;
  ApiCallResponse? apiOrderLevelOP;
  ApiCallResponse? apiWarehousesOP;
  ApiCallResponse? apiCustomsOP;
  ApiCallResponse? apiGoodsOP;
  ApiCallResponse? apiGoodDescriptionsOP;
  ApiCallResponse? apiDetailsOP;

  apiClientsOP = await TablesGroup.clientsCall.call();
  if ((apiClientsOP.succeeded ?? true)) {
    FFAppState().clientsList = TablesGroup.clientsCall
        .clientName(
          (apiClientsOP.jsonBody ?? ''),
        )!
        .toList()
        .cast<String>();
    apiOrderLevelOP = await TablesGroup.orderNoCall.call();
    if ((apiOrderLevelOP.succeeded ?? true)) {
      FFAppState().orderNos = functions
          .noRepeated(TablesGroup.orderNoCall
              .orderNo(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().licences = functions
          .noRepeated(TablesGroup.orderNoCall
              .licence(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().uniRefNos = functions
          .noRepeated(TablesGroup.orderNoCall
              .uniRefNo(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().fmsRefs = functions
          .noRepeated(TablesGroup.orderNoCall
              .fmsRef(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().loadRefDvhs = functions
          .noRepeated(TablesGroup.orderNoCall
              .loadRefDvh(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().intCustoms = functions
          .noRepeated(functions
              .intToStringList(TablesGroup.orderNoCall
                  .internalRefCustom(
                    (apiOrderLevelOP.jsonBody ?? ''),
                  )!
                  .toList())
              .toList())
          .toList()
          .cast<String>();
      FFAppState().containers = functions
          .noRepeated(TablesGroup.orderNoCall
              .container(
                (apiOrderLevelOP.jsonBody ?? ''),
              )!
              .toList())
          .toList()
          .cast<String>();
      FFAppState().palletPositions = functions
          .noRepeated(functions
              .intToStringList(TablesGroup.orderNoCall
                  .palletPosition(
                    (apiOrderLevelOP.jsonBody ?? ''),
                  )!
                  .toList())
              .toList())
          .toList()
          .cast<String>();
      apiWarehousesOP = await TablesGroup.warehouseCall.call();
      if ((apiWarehousesOP.succeeded ?? true)) {
        FFAppState().warehouseList = TablesGroup.warehouseCall
            .warehouseName(
              (apiWarehousesOP.jsonBody ?? ''),
            )!
            .toList()
            .cast<String>();
        apiCustomsOP = await TablesGroup.customsCall.call();
        if ((apiCustomsOP.succeeded ?? true)) {
          FFAppState().customList = TablesGroup.customsCall
              .customName(
                (apiCustomsOP.jsonBody ?? ''),
              )!
              .toList()
              .cast<String>();
          apiGoodsOP = await TablesGroup.goodsCall.call();
          if ((apiGoodsOP.succeeded ?? true)) {
            FFAppState().goodsList = TablesGroup.goodsCall
                .item(
                  (apiGoodsOP.jsonBody ?? ''),
                )!
                .toList()
                .cast<String>();
            apiGoodDescriptionsOP =
                await TablesGroup.goodDescriptionsCall.call();
            if ((apiGoodDescriptionsOP.succeeded ?? true)) {
              FFAppState().goodDescriptionList =
                  TablesGroup.goodDescriptionsCall
                      .opisBlaga(
                        (apiGoodDescriptionsOP.jsonBody ?? ''),
                      )!
                      .toList()
                      .cast<String>();
              apiDetailsOP = await TablesGroup.detailsCall.call();
              if ((apiDetailsOP.succeeded ?? true)) {
                FFAppState().update(() {
                  FFAppState().barcodesList = functions
                      .noRepeated(((TablesGroup.detailsCall.barcodeOut(
                                (apiDetailsOP?.jsonBody ?? ''),
                              )!)
                                  .toList() +
                              (TablesGroup.detailsCall.barcode(
                                (apiDetailsOP?.jsonBody ?? ''),
                              )!)
                                  .toList())
                          .toList())
                      .toList()
                      .cast<String>();
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Details API call problem.',
                      style: TextStyle(),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                    'Good descriptions API call problem.',
                    style: TextStyle(),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text(
                  'Goods API call problem.',
                  style: TextStyle(),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                'Customs API call problem.',
                style: TextStyle(),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Warehouse API call problem.',
              style: TextStyle(),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Order level API call problem.',
            style: TextStyle(),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Clients API call problem.',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}
