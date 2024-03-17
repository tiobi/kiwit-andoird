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

  static int _$userId(AuthModel v) => v.userId;
  static const Field<AuthModel, int> _f$userId = Field('userId', _$userId);
  static String _$refreshToken(AuthModel v) => v.refreshToken;
  static const Field<AuthModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);
  static String _$fcmToken(AuthModel v) => v.fcmToken;
  static const Field<AuthModel, String> _f$fcmToken =
      Field('fcmToken', _$fcmToken);
  static DateTime _$latestVisit(AuthModel v) => v.latestVisit;
  static const Field<AuthModel, DateTime> _f$latestVisit =
      Field('latestVisit', _$latestVisit);

  @override
  final MappableFields<AuthModel> fields = const {
    #userId: _f$userId,
    #refreshToken: _f$refreshToken,
    #fcmToken: _f$fcmToken,
    #latestVisit: _f$latestVisit,
  };

  static AuthModel _instantiate(DecodingData data) {
    return AuthModel(
        userId: data.dec(_f$userId),
        refreshToken: data.dec(_f$refreshToken),
        fcmToken: data.dec(_f$fcmToken),
        latestVisit: data.dec(_f$latestVisit));
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
      {int? userId,
      String? refreshToken,
      String? fcmToken,
      DateTime? latestVisit});
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
          {int? userId,
          String? refreshToken,
          String? fcmToken,
          DateTime? latestVisit}) =>
      $apply(FieldCopyWithData({
        if (userId != null) #userId: userId,
        if (refreshToken != null) #refreshToken: refreshToken,
        if (fcmToken != null) #fcmToken: fcmToken,
        if (latestVisit != null) #latestVisit: latestVisit
      }));
  @override
  AuthModel $make(CopyWithData data) => AuthModel(
      userId: data.get(#userId, or: $value.userId),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      fcmToken: data.get(#fcmToken, or: $value.fcmToken),
      latestVisit: data.get(#latestVisit, or: $value.latestVisit));

  @override
  AuthModelCopyWith<$R2, AuthModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthModelCopyWithImpl($value, $cast, t);
}
