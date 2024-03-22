// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'jwt_entity.dart';

class JWTEntityMapper extends ClassMapperBase<JWTEntity> {
  JWTEntityMapper._();

  static JWTEntityMapper? _instance;
  static JWTEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JWTEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'JWTEntity';

  static String? _$accessToken(JWTEntity v) => v.accessToken;
  static const Field<JWTEntity, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(JWTEntity v) => v.refreshToken;
  static const Field<JWTEntity, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);

  @override
  final MappableFields<JWTEntity> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static JWTEntity _instantiate(DecodingData data) {
    return JWTEntity(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static JWTEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JWTEntity>(map);
  }

  static JWTEntity fromJson(String json) {
    return ensureInitialized().decodeJson<JWTEntity>(json);
  }
}

mixin JWTEntityMappable {
  String toJson() {
    return JWTEntityMapper.ensureInitialized()
        .encodeJson<JWTEntity>(this as JWTEntity);
  }

  Map<String, dynamic> toMap() {
    return JWTEntityMapper.ensureInitialized()
        .encodeMap<JWTEntity>(this as JWTEntity);
  }

  JWTEntityCopyWith<JWTEntity, JWTEntity, JWTEntity> get copyWith =>
      _JWTEntityCopyWithImpl(this as JWTEntity, $identity, $identity);
  @override
  String toString() {
    return JWTEntityMapper.ensureInitialized()
        .stringifyValue(this as JWTEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            JWTEntityMapper.ensureInitialized()
                .isValueEqual(this as JWTEntity, other));
  }

  @override
  int get hashCode {
    return JWTEntityMapper.ensureInitialized().hashValue(this as JWTEntity);
  }
}

extension JWTEntityValueCopy<$R, $Out> on ObjectCopyWith<$R, JWTEntity, $Out> {
  JWTEntityCopyWith<$R, JWTEntity, $Out> get $asJWTEntity =>
      $base.as((v, t, t2) => _JWTEntityCopyWithImpl(v, t, t2));
}

abstract class JWTEntityCopyWith<$R, $In extends JWTEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  JWTEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JWTEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JWTEntity, $Out>
    implements JWTEntityCopyWith<$R, JWTEntity, $Out> {
  _JWTEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JWTEntity> $mapper =
      JWTEntityMapper.ensureInitialized();
  @override
  $R call({Object? accessToken = $none, Object? refreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != $none) #accessToken: accessToken,
        if (refreshToken != $none) #refreshToken: refreshToken
      }));
  @override
  JWTEntity $make(CopyWithData data) => JWTEntity(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  JWTEntityCopyWith<$R2, JWTEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _JWTEntityCopyWithImpl($value, $cast, t);
}
