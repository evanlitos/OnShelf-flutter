// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginResponseTokenStruct extends FFFirebaseStruct {
  LoginResponseTokenStruct({
    String? token,
    UserDataStruct? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _token = token,
        _user = user,
        super(firestoreUtilData);

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "user" field.
  UserDataStruct? _user;
  UserDataStruct get user => _user ?? UserDataStruct();
  set user(UserDataStruct? val) => _user = val;

  void updateUser(Function(UserDataStruct) updateFn) {
    updateFn(_user ??= UserDataStruct());
  }

  bool hasUser() => _user != null;

  static LoginResponseTokenStruct fromMap(Map<String, dynamic> data) =>
      LoginResponseTokenStruct(
        token: data['token'] as String?,
        user: data['user'] is UserDataStruct
            ? data['user']
            : UserDataStruct.maybeFromMap(data['user']),
      );

  static LoginResponseTokenStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginResponseTokenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginResponseTokenStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoginResponseTokenStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginResponseTokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginResponseTokenStruct &&
        token == other.token &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([token, user]);
}

LoginResponseTokenStruct createLoginResponseTokenStruct({
  String? token,
  UserDataStruct? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoginResponseTokenStruct(
      token: token,
      user: user ?? (clearUnsetFields ? UserDataStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoginResponseTokenStruct? updateLoginResponseTokenStruct(
  LoginResponseTokenStruct? loginResponseToken, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loginResponseToken
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoginResponseTokenStructData(
  Map<String, dynamic> firestoreData,
  LoginResponseTokenStruct? loginResponseToken,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loginResponseToken == null) {
    return;
  }
  if (loginResponseToken.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && loginResponseToken.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loginResponseTokenData =
      getLoginResponseTokenFirestoreData(loginResponseToken, forFieldValue);
  final nestedData =
      loginResponseTokenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      loginResponseToken.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoginResponseTokenFirestoreData(
  LoginResponseTokenStruct? loginResponseToken, [
  bool forFieldValue = false,
]) {
  if (loginResponseToken == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loginResponseToken.toMap());

  // Handle nested data for "user" field.
  addUserDataStructData(
    firestoreData,
    loginResponseToken.hasUser() ? loginResponseToken.user : null,
    'user',
    forFieldValue,
  );

  // Add any Firestore field values
  loginResponseToken.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoginResponseTokenListFirestoreData(
  List<LoginResponseTokenStruct>? loginResponseTokens,
) =>
    loginResponseTokens
        ?.map((e) => getLoginResponseTokenFirestoreData(e, true))
        .toList() ??
    [];
