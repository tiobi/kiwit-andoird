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

  static int _$user_id(AuthModel v) => v.user_id;
  static const Field<AuthModel, int> _f$user_id = Field('user_id', _$user_id);
  static String _$refresh_token(AuthModel v) => v.refresh_token;
  static const Field<AuthModel, String> _f$refresh_token =
      Field('refresh_token', _$refresh_token);
  static String _$fcm_token(AuthModel v) => v.fcm_token;
  static const Field<AuthModel, String> _f$fcm_token =
      Field('fcm_token', _$fcm_token);
  static DateTime _$latest_visit(AuthModel v) => v.latest_visit;
  static const Field<AuthModel, DateTime> _f$latest_visit =
      Field('latest_visit', _$latest_visit);

  @override
  final MappableFields<AuthModel> fields = const {
    #user_id: _f$user_id,
    #refresh_token: _f$refresh_token,
    #fcm_token: _f$fcm_token,
    #latest_visit: _f$latest_visit,
  };

  static AuthModel _instantiate(DecodingData data) {
    return AuthModel(
        user_id: data.dec(_f$user_id),
        refresh_token: data.dec(_f$refresh_token),
        fcm_token: data.dec(_f$fcm_token),
        latest_visit: data.dec(_f$latest_visit));
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
      {int? user_id,
      String? refresh_token,
      String? fcm_token,
      DateTime? latest_visit});
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
  AuthModel $make(CopyWithData data) => AuthModel(
      user_id: data.get(#user_id, or: $value.user_id),
      refresh_token: data.get(#refresh_token, or: $value.refresh_token),
      fcm_token: data.get(#fcm_token, or: $value.fcm_token),
      latest_visit: data.get(#latest_visit, or: $value.latest_visit));

  @override
  AuthModelCopyWith<$R2, AuthModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthModelCopyWithImpl($value, $cast, t);
}
