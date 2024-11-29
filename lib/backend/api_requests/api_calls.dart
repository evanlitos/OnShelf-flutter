import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ApiShelf Group Code

class ApiShelfGroup {
  static String getBaseUrl() => 'https://api.onshelf.app';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static GetRouteForMerchandiserCall getRouteForMerchandiserCall =
      GetRouteForMerchandiserCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/api/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {},
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
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'registerUser',
      apiUrl: '$baseUrl/api/v1/auth/register',
      callType: ApiCallType.POST,
      headers: {},
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
  }) async {
    final baseUrl = ApiShelfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRouteForMerchandiser',
      apiUrl: '$baseUrl/api/v1/app/route/merchandiser/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<RouteMerchandiseResponseStruct>? all(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => RouteMerchandiseResponseStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
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
