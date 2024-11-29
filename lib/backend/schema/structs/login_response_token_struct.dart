// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginResponseTokenStruct extends BaseStruct {
  LoginResponseTokenStruct({
    String? token,
    UserDataStruct? user,
  })  : _token = token,
        _user = user;

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
        user: UserDataStruct.maybeFromMap(data['user']),
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
}) =>
    LoginResponseTokenStruct(
      token: token,
      user: user ?? UserDataStruct(),
    );
