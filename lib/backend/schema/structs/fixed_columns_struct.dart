// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FixedColumnsStruct extends BaseStruct {
  FixedColumnsStruct({
    String? invStatus,
    String? orderNo,
    String? client,
  })  : _invStatus = invStatus,
        _orderNo = orderNo,
        _client = client;

  // "inv_status" field.
  String? _invStatus;
  String get invStatus => _invStatus ?? 'brez izbire';
  set invStatus(String? val) => _invStatus = val;
  bool hasInvStatus() => _invStatus != null;

  // "order_no" field.
  String? _orderNo;
  String get orderNo => _orderNo ?? 'brez izbire';
  set orderNo(String? val) => _orderNo = val;
  bool hasOrderNo() => _orderNo != null;

  // "client" field.
  String? _client;
  String get client => _client ?? 'brez izbire';
  set client(String? val) => _client = val;
  bool hasClient() => _client != null;

  static FixedColumnsStruct fromMap(Map<String, dynamic> data) =>
      FixedColumnsStruct(
        invStatus: data['inv_status'] as String?,
        orderNo: data['order_no'] as String?,
        client: data['client'] as String?,
      );

  static FixedColumnsStruct? maybeFromMap(dynamic data) => data is Map
      ? FixedColumnsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'inv_status': _invStatus,
        'order_no': _orderNo,
        'client': _client,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inv_status': serializeParam(
          _invStatus,
          ParamType.String,
        ),
        'order_no': serializeParam(
          _orderNo,
          ParamType.String,
        ),
        'client': serializeParam(
          _client,
          ParamType.String,
        ),
      }.withoutNulls;

  static FixedColumnsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FixedColumnsStruct(
        invStatus: deserializeParam(
          data['inv_status'],
          ParamType.String,
          false,
        ),
        orderNo: deserializeParam(
          data['order_no'],
          ParamType.String,
          false,
        ),
        client: deserializeParam(
          data['client'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FixedColumnsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FixedColumnsStruct &&
        invStatus == other.invStatus &&
        orderNo == other.orderNo &&
        client == other.client;
  }

  @override
  int get hashCode => const ListEquality().hash([invStatus, orderNo, client]);
}

FixedColumnsStruct createFixedColumnsStruct({
  String? invStatus,
  String? orderNo,
  String? client,
}) =>
    FixedColumnsStruct(
      invStatus: invStatus,
      orderNo: orderNo,
      client: client,
    );
