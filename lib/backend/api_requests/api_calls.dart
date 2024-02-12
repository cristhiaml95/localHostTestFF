import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start tables Group Code

class TablesGroup {
  static String baseUrl = 'https://xvpkpgmwllqgytdtlnts.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
  };
  static ClientsCall clientsCall = ClientsCall();
  static OrderNoCall orderNoCall = OrderNoCall();
  static WarehouseCall warehouseCall = WarehouseCall();
  static CustomsCall customsCall = CustomsCall();
  static GoodsCall goodsCall = GoodsCall();
  static GoodDescriptionsCall goodDescriptionsCall = GoodDescriptionsCall();
  static UsersCall usersCall = UsersCall();
  static DetailsCall detailsCall = DetailsCall();
}

class ClientsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'clients',
      apiUrl: '${TablesGroup.baseUrl}clients?select=id,client',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? clientId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clientName(dynamic response) => (getJsonField(
        response,
        r'''$[:].client''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OrderNoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderNo',
      apiUrl:
          '${TablesGroup.baseUrl}/vista_order_level_extended?select=order_no,licence_plate,pallet_position,universal_ref_no,fms_ref,load_ref_dvh,internal_ref_custom,container_no',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? orderNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? licence(dynamic response) => (getJsonField(
        response,
        r'''$[:].licence_plate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? palletPosition(dynamic response) => (getJsonField(
        response,
        r'''$[:].pallet_position''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? uniRefNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].universal_ref_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fmsRef(dynamic response) => (getJsonField(
        response,
        r'''$[:].fms_ref''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? loadRefDvh(dynamic response) => (getJsonField(
        response,
        r'''$[:].load_ref_dvh''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? internalRefCustom(dynamic response) => (getJsonField(
        response,
        r'''$[:].internal_ref_custom''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? container(dynamic response) => (getJsonField(
        response,
        r'''$[:].container_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class WarehouseCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'warehouse',
      apiUrl: '${TablesGroup.baseUrl}/warehouses?select=id,warehouse',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? warehouseId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? warehouseName(dynamic response) => (getJsonField(
        response,
        r'''$[:].warehouse''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CustomsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'customs',
      apiUrl: '${TablesGroup.baseUrl}customs?select=id,custom',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? customId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? customName(dynamic response) => (getJsonField(
        response,
        r'''$[:].custom''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GoodsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'goods',
      apiUrl: '${TablesGroup.baseUrl}goods?select=id,item',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? customId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? item(dynamic response) => (getJsonField(
        response,
        r'''$[:].item''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GoodDescriptionsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'goodDescriptions',
      apiUrl: '${TablesGroup.baseUrl}good_descriptions?select=id,opis_blaga',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? descriptionId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? opisBlaga(dynamic response) => (getJsonField(
        response,
        r'''$[:].opis_blaga''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UsersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'users',
      apiUrl: '${TablesGroup.baseUrl}users?select=id,email,name,last_name',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? userId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lastName(dynamic response) => (getJsonField(
        response,
        r'''$[:].last_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DetailsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'details',
      apiUrl: '${TablesGroup.baseUrl}details_view?select=barcode_out,barcode',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? barcodeOut(dynamic response) => (getJsonField(
        response,
        r'''$[:].barcode_out''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? barcode(dynamic response) => (getJsonField(
        response,
        r'''$[:].barcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End tables Group Code

class SearchQueryCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchQuery',
      apiUrl:
          'https://xvpkpgmwllqgytdtlnts.supabase.co/rest/v1/order_level?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2cGtwZ213bGxxZ3l0ZHRsbnRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU3MDM0NTQsImV4cCI6MjAyMTI3OTQ1NH0.DPS7em_M28tXdHs4wN7AW_DHUKXqLIrSnjbMsnFNDzI',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? noBarcodesAPI(dynamic response) => getJsonField(
        response,
        r'''$[:].no_barcodes''',
        true,
      ) as List?;
  static List? repeatedBarcodesAPI(dynamic response) => getJsonField(
        response,
        r'''$[:].repeated_barcodes''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
