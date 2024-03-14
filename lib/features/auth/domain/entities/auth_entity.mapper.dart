// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_entity.dart';

class AuthEntityMapper extends ClassMapperBase<AuthEntity> {
  AuthEntityMapper._();

  static AuthEntityMapper? _instance;
  static AuthEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthEntity';

  static int _$user_id(AuthEntity v) => v.user_id;
  static const Field<AuthEntity, int> _f$user_id = Field('user_id', _$user_id);
  static String _$refresh_token(AuthEntity v) => v.refresh_token;
  static const Field<AuthEntity, String> _f$refresh_token =
      Field('refresh_token', _$refresh_token);
  static String _$fcm_token(AuthEntity v) => v.fcm_token;
  static const Field<AuthEntity, String> _f$fcm_token =
      Field('fcm_token', _$fcm_token);
  static DateTime _$latest_visit(AuthEntity v) => v.latest_visit;
  static const Field<AuthEntity, DateTime> _f$latest_visit =
      Field('latest_visit', _$latest_visit);

  @override
  final MappableFields<AuthEntity> fields = const {
    #user_id: _f$user_id,
    #refresh_token: _f$refresh_token,
    #fcm_token: _f$fcm_token,
    #latest_visit: _f$latest_visit,
  };

  static AuthEntity _instantiate(DecodingData data) {
    return AuthEntity(
        user_id: data.dec(_f$user_id),
        refresh_token: data.dec(_f$refresh_token),
        fcm_token: data.dec(_f$fcm_token),
        latest_visit: data.dec(_f$latest_visit));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthEntity>(map);
  }

  static AuthEntity fromJson(String json) {
    return ensureInitialized().decodeJson<AuthEntity>(json);
  }
}

mixin AuthEntityMappable {
  String toJson() {
    return AuthEntityMapper.ensureInitialized()
        .encodeJson<AuthEntity>(this as AuthEntity);
  }

  Map<String, dynamic> toMap() {
    return AuthEntityMapper.ensureInitialized()
        .encodeMap<AuthEntity>(this as AuthEntity);
  }

  AuthEntityCopyWith<AuthEntity, AuthEntity, AuthEntity> get copyWith =>
      _AuthEntityCopyWithImpl(this as AuthEntity, $identity, $identity);
  @override
  String toString() {
    return AuthEntityMapper.ensureInitialized()
        .stringifyValue(this as AuthEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthEntityMapper.ensureInitialized()
                .isValueEqual(this as AuthEntity, other));
  }

  @override
  int get hashCode {
    return AuthEntityMapper.ensureInitialized().hashValue(this as AuthEntity);
  }
}

extension AuthEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthEntity, $Out> {
  AuthEntityCopyWith<$R, AuthEntity, $Out> get $asAuthEntity =>
      $base.as((v, t, t2) => _AuthEntityCopyWithImpl(v, t, t2));
}

abstract class AuthEntityCopyWith<$R, $In extends AuthEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? user_id,
      String? refresh_token,
      String? fcm_token,
      DateTime? latest_visit});
  AuthEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthEntity, $Out>
    implements AuthEntityCopyWith<$R, AuthEntity, $Out> {
  _AuthEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthEntity> $mapper =
      AuthEntityMapper.ensureInitialized();
  @override
  $R call(
          {int? user_id,
          String? refresh_token,
          String? fcm_token,
          DateTime? latest_visit}) =>
      $apply(FieldCopyWithData({
        if (user_id != null) #user_id: user_id,
        if (refresh_token != null) #refresh_token: refresh_token,
        if (fcm_token != null) #fcm_token: fcm_token,
        if (latest_visit != null) #latest_visit: latest_visit
      }));
  @override
  AuthEntity $make(CopyWithData data) => AuthEntity(
      user_id: data.get(#user_id, or: $value.user_id),
      refresh_token: data.get(#refresh_token, or: $value.refresh_token),
      fcm_token: data.get(#fcm_token, or: $value.fcm_token),
      latest_visit: data.get(#latest_visit, or: $value.latest_visit));

  @override
  AuthEntityCopyWith<$R2, AuthEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthEntityCopyWithImpl($value, $cast, t);
}
