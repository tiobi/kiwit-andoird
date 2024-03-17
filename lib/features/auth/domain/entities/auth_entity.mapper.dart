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

  static int _$userId(AuthEntity v) => v.userId;
  static const Field<AuthEntity, int> _f$userId = Field('userId', _$userId);
  static String _$refreshToken(AuthEntity v) => v.refreshToken;
  static const Field<AuthEntity, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);
  static String _$fcmToken(AuthEntity v) => v.fcmToken;
  static const Field<AuthEntity, String> _f$fcmToken =
      Field('fcmToken', _$fcmToken);
  static DateTime _$latestVisit(AuthEntity v) => v.latestVisit;
  static const Field<AuthEntity, DateTime> _f$latestVisit =
      Field('latestVisit', _$latestVisit);

  @override
  final MappableFields<AuthEntity> fields = const {
    #userId: _f$userId,
    #refreshToken: _f$refreshToken,
    #fcmToken: _f$fcmToken,
    #latestVisit: _f$latestVisit,
  };

  static AuthEntity _instantiate(DecodingData data) {
    return AuthEntity(
        userId: data.dec(_f$userId),
        refreshToken: data.dec(_f$refreshToken),
        fcmToken: data.dec(_f$fcmToken),
        latestVisit: data.dec(_f$latestVisit));
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
      {int? userId,
      String? refreshToken,
      String? fcmToken,
      DateTime? latestVisit});
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
  AuthEntity $make(CopyWithData data) => AuthEntity(
      userId: data.get(#userId, or: $value.userId),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      fcmToken: data.get(#fcmToken, or: $value.fcmToken),
      latestVisit: data.get(#latestVisit, or: $value.latestVisit));

  @override
  AuthEntityCopyWith<$R2, AuthEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthEntityCopyWithImpl($value, $cast, t);
}
