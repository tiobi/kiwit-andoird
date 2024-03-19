// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_model.dart';

class AuthModelMapper extends ClassMapperBase<AuthModel> {
  AuthModelMapper._();

  static AuthModelMapper? _instance;
  static AuthModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthModelMapper._());
      AuthEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthModel';

  static String? _$email(AuthModel v) => v.email;
  static const Field<AuthModel, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$nickname(AuthModel v) => v.nickname;
  static const Field<AuthModel, String> _f$nickname =
      Field('nickname', _$nickname, opt: true);
  static String? _$accessToken(AuthModel v) => v.accessToken;
  static const Field<AuthModel, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(AuthModel v) => v.refreshToken;
  static const Field<AuthModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);
  static String? _$provider(AuthModel v) => v.provider;
  static const Field<AuthModel, String> _f$provider =
      Field('provider', _$provider, opt: true);

  @override
  final MappableFields<AuthModel> fields = const {
    #email: _f$email,
    #nickname: _f$nickname,
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
    #provider: _f$provider,
  };

  static AuthModel _instantiate(DecodingData data) {
    return AuthModel(
        email: data.dec(_f$email),
        nickname: data.dec(_f$nickname),
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken),
        provider: data.dec(_f$provider));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthModel>(map);
  }

  static AuthModel fromJson(String json) {
    return ensureInitialized().decodeJson<AuthModel>(json);
  }
}

mixin AuthModelMappable {
  String toJson() {
    return AuthModelMapper.ensureInitialized()
        .encodeJson<AuthModel>(this as AuthModel);
  }

  Map<String, dynamic> toMap() {
    return AuthModelMapper.ensureInitialized()
        .encodeMap<AuthModel>(this as AuthModel);
  }

  AuthModelCopyWith<AuthModel, AuthModel, AuthModel> get copyWith =>
      _AuthModelCopyWithImpl(this as AuthModel, $identity, $identity);
  @override
  String toString() {
    return AuthModelMapper.ensureInitialized()
        .stringifyValue(this as AuthModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthModelMapper.ensureInitialized()
                .isValueEqual(this as AuthModel, other));
  }

  @override
  int get hashCode {
    return AuthModelMapper.ensureInitialized().hashValue(this as AuthModel);
  }
}

extension AuthModelValueCopy<$R, $Out> on ObjectCopyWith<$R, AuthModel, $Out> {
  AuthModelCopyWith<$R, AuthModel, $Out> get $asAuthModel =>
      $base.as((v, t, t2) => _AuthModelCopyWithImpl(v, t, t2));
}

abstract class AuthModelCopyWith<$R, $In extends AuthModel, $Out>
    implements AuthEntityCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? email,
      String? nickname,
      String? accessToken,
      String? refreshToken,
      String? provider});
  AuthModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthModel, $Out>
    implements AuthModelCopyWith<$R, AuthModel, $Out> {
  _AuthModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthModel> $mapper =
      AuthModelMapper.ensureInitialized();
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
  AuthModel $make(CopyWithData data) => AuthModel(
      email: data.get(#email, or: $value.email),
      nickname: data.get(#nickname, or: $value.nickname),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      provider: data.get(#provider, or: $value.provider));

  @override
  AuthModelCopyWith<$R2, AuthModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthModelCopyWithImpl($value, $cast, t);
}
