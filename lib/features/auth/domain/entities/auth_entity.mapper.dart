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

  static String? _$email(AuthEntity v) => v.email;
  static const Field<AuthEntity, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$nickname(AuthEntity v) => v.nickname;
  static const Field<AuthEntity, String> _f$nickname =
      Field('nickname', _$nickname, opt: true);
  static String? _$accessToken(AuthEntity v) => v.accessToken;
  static const Field<AuthEntity, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(AuthEntity v) => v.refreshToken;
  static const Field<AuthEntity, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);
  static String? _$provider(AuthEntity v) => v.provider;
  static const Field<AuthEntity, String> _f$provider =
      Field('provider', _$provider, opt: true);

  @override
  final MappableFields<AuthEntity> fields = const {
    #email: _f$email,
    #nickname: _f$nickname,
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
    #provider: _f$provider,
  };

  static AuthEntity _instantiate(DecodingData data) {
    return AuthEntity(
        email: data.dec(_f$email),
        nickname: data.dec(_f$nickname),
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken),
        provider: data.dec(_f$provider));
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
      {String? email,
      String? nickname,
      String? accessToken,
      String? refreshToken,
      String? provider});
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
          {Object? email = $none,
          Object? nickname = $none,
          Object? accessToken = $none,
          Object? refreshToken = $none,
          Object? provider = $none}) =>
      $apply(FieldCopyWithData({
        if (email != $none) #email: email,
        if (nickname != $none) #nickname: nickname,
        if (accessToken != $none) #accessToken: accessToken,
        if (refreshToken != $none) #refreshToken: refreshToken,
        if (provider != $none) #provider: provider
      }));
  @override
  AuthEntity $make(CopyWithData data) => AuthEntity(
      email: data.get(#email, or: $value.email),
      nickname: data.get(#nickname, or: $value.nickname),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      provider: data.get(#provider, or: $value.provider));

  @override
  AuthEntityCopyWith<$R2, AuthEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthEntityCopyWithImpl($value, $cast, t);
}
