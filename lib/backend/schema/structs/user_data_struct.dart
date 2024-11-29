// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    int? id,
    String? name,
    String? email,
    String? emailVerifiedAt,
    String? createdAt,
    String? updatedAt,
    String? lastName,
    String? position,
    String? phone,
    String? role,
    String? vendor,
    String? status,
    String? country,
    String? religion,
    String? imageId,
    String? image,
    String? vendorName,
    String? vendorr,
  })  : _id = id,
        _name = name,
        _email = email,
        _emailVerifiedAt = emailVerifiedAt,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _lastName = lastName,
        _position = position,
        _phone = phone,
        _role = role,
        _vendor = vendor,
        _status = status,
        _country = country,
        _religion = religion,
        _imageId = imageId,
        _image = image,
        _vendorName = vendorName,
        _vendorr = vendorr;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "email_verified_at" field.
  String? _emailVerifiedAt;
  String get emailVerifiedAt => _emailVerifiedAt ?? '';
  set emailVerifiedAt(String? val) => _emailVerifiedAt = val;

  bool hasEmailVerifiedAt() => _emailVerifiedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  set religion(String? val) => _religion = val;

  bool hasReligion() => _religion != null;

  // "image_id" field.
  String? _imageId;
  String get imageId => _imageId ?? '';
  set imageId(String? val) => _imageId = val;

  bool hasImageId() => _imageId != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "vendorName" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  set vendorName(String? val) => _vendorName = val;

  bool hasVendorName() => _vendorName != null;

  // "vendorr" field.
  String? _vendorr;
  String get vendorr => _vendorr ?? '';
  set vendorr(String? val) => _vendorr = val;

  bool hasVendorr() => _vendorr != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        emailVerifiedAt: data['email_verified_at'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        lastName: data['last_name'] as String?,
        position: data['position'] as String?,
        phone: data['phone'] as String?,
        role: data['role'] as String?,
        vendor: data['vendor'] as String?,
        status: data['status'] as String?,
        country: data['country'] as String?,
        religion: data['religion'] as String?,
        imageId: data['image_id'] as String?,
        image: data['image'] as String?,
        vendorName: data['vendorName'] as String?,
        vendorr: data['vendorr'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'email_verified_at': _emailVerifiedAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'last_name': _lastName,
        'position': _position,
        'phone': _phone,
        'role': _role,
        'vendor': _vendor,
        'status': _status,
        'country': _country,
        'religion': _religion,
        'image_id': _imageId,
        'image': _image,
        'vendorName': _vendorName,
        'vendorr': _vendorr,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'email_verified_at': serializeParam(
          _emailVerifiedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'religion': serializeParam(
          _religion,
          ParamType.String,
        ),
        'image_id': serializeParam(
          _imageId,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'vendorName': serializeParam(
          _vendorName,
          ParamType.String,
        ),
        'vendorr': serializeParam(
          _vendorr,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emailVerifiedAt: deserializeParam(
          data['email_verified_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        religion: deserializeParam(
          data['religion'],
          ParamType.String,
          false,
        ),
        imageId: deserializeParam(
          data['image_id'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        vendorName: deserializeParam(
          data['vendorName'],
          ParamType.String,
          false,
        ),
        vendorr: deserializeParam(
          data['vendorr'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        emailVerifiedAt == other.emailVerifiedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        lastName == other.lastName &&
        position == other.position &&
        phone == other.phone &&
        role == other.role &&
        vendor == other.vendor &&
        status == other.status &&
        country == other.country &&
        religion == other.religion &&
        imageId == other.imageId &&
        image == other.image &&
        vendorName == other.vendorName &&
        vendorr == other.vendorr;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        email,
        emailVerifiedAt,
        createdAt,
        updatedAt,
        lastName,
        position,
        phone,
        role,
        vendor,
        status,
        country,
        religion,
        imageId,
        image,
        vendorName,
        vendorr
      ]);
}

UserDataStruct createUserDataStruct({
  int? id,
  String? name,
  String? email,
  String? emailVerifiedAt,
  String? createdAt,
  String? updatedAt,
  String? lastName,
  String? position,
  String? phone,
  String? role,
  String? vendor,
  String? status,
  String? country,
  String? religion,
  String? imageId,
  String? image,
  String? vendorName,
  String? vendorr,
}) =>
    UserDataStruct(
      id: id,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastName: lastName,
      position: position,
      phone: phone,
      role: role,
      vendor: vendor,
      status: status,
      country: country,
      religion: religion,
      imageId: imageId,
      image: image,
      vendorName: vendorName,
      vendorr: vendorr,
    );
