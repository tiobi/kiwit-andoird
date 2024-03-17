// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_response.dart';

class AuthResponseMapper extends ClassMapperBase<AuthResponse> {
  AuthResponseMapper._();

  static AuthResponseMapper? _instance;
  static AuthResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthResponse';

  static int _$statusCode(AuthResponse v) => v.statusCode;
  static const Field<AuthResponse, int> _f$statusCode =
      Field('statusCode', _$statusCode);
  static String _$body(AuthResponse v) => v.body;
  static const Field<AuthResponse, String> _f$body = Field('body', _$body);

  @override
  final MappableFields<AuthResponse> fields = const {
    #statusCode: _f$statusCode,
    #body: _f$body,
  };

  static AuthResponse _instantiate(DecodingData data) {
    return AuthResponse(
        statusCode: data.dec(_f$statusCode), body: data.dec(_f$body));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthResponse>(map);
  }

  static AuthResponse fromJson(String json) {
    return ensureInitialized().decodeJson<AuthResponse>(json);
  }
}

mixin AuthResponseMappable {
  String toJson() {
    return AuthResponseMapper.ensureInitialized()
        .encodeJson<AuthResponse>(this as AuthResponse);
  }

  Map<String, dynamic> toMap() {
    return AuthResponseMapper.ensureInitialized()
        .encodeMap<AuthResponse>(this as AuthResponse);
  }

  AuthResponseCopyWith<AuthResponse, AuthResponse, AuthResponse> get copyWith =>
      _AuthResponseCopyWithImpl(this as AuthResponse, $identity, $identity);
  @override
  String toString() {
    return AuthResponseMapper.ensureInitialized()
        .stringifyValue(this as AuthResponse);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthResponseMapper.ensureInitialized()
                .isValueEqual(this as AuthResponse, other));
  }

  @override
  int get hashCode {
    return AuthResponseMapper.ensureInitialized()
        .hashValue(this as AuthResponse);
  }
}

extension AuthResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthResponse, $Out> {
  AuthResponseCopyWith<$R, AuthResponse, $Out> get $asAuthResponse =>
      $base.as((v, t, t2) => _AuthResponseCopyWithImpl(v, t, t2));
}

abstract class AuthResponseCopyWith<$R, $In extends AuthResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? statusCode, String? body});
  AuthResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthResponse, $Out>
    implements AuthResponseCopyWith<$R, AuthResponse, $Out> {
  _AuthResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthResponse> $mapper =
      AuthResponseMapper.ensureInitialized();
  @override
  $R call({int? statusCode, String? body}) => $apply(FieldCopyWithData({
        if (statusCode != null) #statusCode: statusCode,
        if (body != null) #body: body
      }));
  @override
  AuthResponse $make(CopyWithData data) => AuthResponse(
      statusCode: data.get(#statusCode, or: $value.statusCode),
      body: data.get(#body, or: $value.body));

  @override
  AuthResponseCopyWith<$R2, AuthResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthResponseCopyWithImpl($value, $cast, t);
}
