import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ApiShelf Group Code

class ApiShelfGroup {
  static String getBaseUrl({
    String? toKen = '',
  }) =>
      'https://api.onshelf.app';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [toKen]',
  };
  static LoginCall loginCall = LoginCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static GetRouteForMerchandiserCall getRouteForMerchandiserCall =
      GetRouteForMerchandiserCall();
  static CheckinCall checkinCall = CheckinCall();
  static ShipShelfCall shipShelfCall = ShipShelfCall();
  static SendPhotosCall sendPhotosCall = SendPhotosCall();
  static SearchCall searchCall = SearchCall();
  static FreshnessCall freshnessCall = FreshnessCall();
  static RtbCall rtbCall = RtbCall();
  static DisplaynotfoundCall displaynotfoundCall = DisplaynotfoundCall();
  static InactivitytrackingCall inactivitytrackingCall =
      InactivitytrackingCall();
  static SearchProductCall searchProductCall = SearchProductCall();
  static SearchProductUPCCall searchProductUPCCall = SearchProductUPCCall();
  static ValidateProductsCall validateProductsCall = ValidateProductsCall();
  static NewPlanogramCall newPlanogramCall = NewPlanogramCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}/api/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
      },
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'registerUser',
      apiUrl: '${baseUrl}/api/v1/auth/register',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
      },
      params: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  UserDataStruct? user(dynamic response) =>
      UserDataStruct.maybeFromMap(getJsonField(
        response,
        r'''$.user''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class GetRouteForMerchandiserCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
    int? isFreshness = 0,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getRouteForMerchandiser',
      apiUrl: '${baseUrl}/api/v1/app/route/merchandiser/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'isFreshness': isFreshness,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class CheckinCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
    String? ubicacion = '',
    FFUploadedFile? img,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Checkin',
      apiUrl: '${baseUrl}/api/v1/app/check-in-user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'ubicacion': ubicacion,
        'img': img,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ShipShelfCall {
  Future<ApiCallResponse> call({
    String? token = '',
    dynamic bodyJson,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ShipShelf',
      apiUrl: '${baseUrl}/api/v1/app/route-register-history',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class SendPhotosCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? idSend,
    FFUploadedFile? imgMainShelfBefore,
    FFUploadedFile? imgMainShelfAfter,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SendPhotos',
      apiUrl: '${baseUrl}/api/v1/app/route-register-history/photos/${idSend}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'img_main_shelf_before': imgMainShelfBefore,
        'img_main_shelf_after': imgMainShelfAfter,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchCall {
  Future<ApiCallResponse> call({
    String? idp = '',
    String? token = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'search',
      apiUrl: '${baseUrl}/api/v1/app/planograms/search/${idp}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FreshnessCall {
  Future<ApiCallResponse> call({
    String? token = '',
    dynamic shelfJson,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final shelf = _serializeJson(shelfJson);
    final ffApiRequestBody = '''
${shelf}''';
    return ApiManager.instance.makeApiCall(
      callName: 'freshness',
      apiUrl: '${baseUrl}/api/v1/app/route-register-history-freshness',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RtbCall {
  Future<ApiCallResponse> call({
    String? token = '',
    dynamic bodyJson,
    int? userId,
    int? productId,
    FFUploadedFile? img,
    int? rec,
    int? cof,
    int? exp,
    int? dam,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final body = _serializeJson(bodyJson);

    return ApiManager.instance.makeApiCall(
      callName: 'rtb',
      apiUrl: '${baseUrl}/api/v1/app/back-door-product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'product_id': productId,
        'dam': dam,
        'exp': exp,
        'cof': cof,
        'rec': rec,
        'img': img,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DisplaynotfoundCall {
  Future<ApiCallResponse> call({
    String? display = '',
    String? token = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final ffApiRequestBody = '''
{
    "status": "displayNotFound"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'displaynotfound',
      apiUrl: '${baseUrl}/api/v1/app/shelfs/status/${display}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InactivitytrackingCall {
  Future<ApiCallResponse> call({
    String? token = '',
    dynamic bodyJson,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inactivitytracking',
      apiUrl: '${baseUrl}/api/v1/app/inactivity-tracking',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchProductCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? sku = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'searchProduct',
      apiUrl: '${baseUrl}/api/v1/app/1/is-exist-product/${sku}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchProductUPCCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? upc = '',
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'searchProductUPC',
      apiUrl: '${baseUrl}/api/v1/products/get-product-by-upc/${upc}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${toKen}',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateProductsCall {
  Future<ApiCallResponse> call({
    dynamic bodyJson,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidateProducts',
      apiUrl: '${baseUrl}/api/v1/app/route-register-history/check',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewPlanogramCall {
  Future<ApiCallResponse> call({
    dynamic bodyJson,
    String? toKen = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl(
      toKen: toKen,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return ApiManager.instance.makeApiCall(
      callName: 'newPlanogram',
      apiUrl: '${baseUrl}/api/v1/planograms',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${toKen}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ApiShelf Group Code

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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
