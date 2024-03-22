// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'jwt_model.dart';

class JWTModelMapper extends ClassMapperBase<JWTModel> {
  JWTModelMapper._();

  static JWTModelMapper? _instance;
  static JWTModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JWTModelMapper._());
      JWTEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JWTModel';

  static String? _$accessToken(JWTModel v) => v.accessToken;
  static const Field<JWTModel, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(JWTModel v) => v.refreshToken;
  static const Field<JWTModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);

  @override
  final MappableFields<JWTModel> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static JWTModel _instantiate(DecodingData data) {
    return JWTModel(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static JWTModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JWTModel>(map);
  }

  static JWTModel fromJson(String json) {
    return ensureInitialized().decodeJson<JWTModel>(json);
  }
}

mixin JWTModelMappable {
  String toJson() {
    return JWTModelMapper.ensureInitialized()
        .encodeJson<JWTModel>(this as JWTModel);
  }

  Map<String, dynamic> toMap() {
    return JWTModelMapper.ensureInitialized()
        .encodeMap<JWTModel>(this as JWTModel);
  }

  JWTModelCopyWith<JWTModel, JWTModel, JWTModel> get copyWith =>
      _JWTModelCopyWithImpl(this as JWTModel, $identity, $identity);
  @override
  String toString() {
    return JWTModelMapper.ensureInitialized().stringifyValue(this as JWTModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            JWTModelMapper.ensureInitialized()
                .isValueEqual(this as JWTModel, other));
  }

  @override
  int get hashCode {
    return JWTModelMapper.ensureInitialized().hashValue(this as JWTModel);
  }
}

extension JWTModelValueCopy<$R, $Out> on ObjectCopyWith<$R, JWTModel, $Out> {
  JWTModelCopyWith<$R, JWTModel, $Out> get $asJWTModel =>
      $base.as((v, t, t2) => _JWTModelCopyWithImpl(v, t, t2));
}

abstract class JWTModelCopyWith<$R, $In extends JWTModel, $Out>
    implements JWTEntityCopyWith<$R, $In, $Out> {
  @override
  $R call({String? accessToken, String? refreshToken});
  JWTModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JWTModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JWTModel, $Out>
    implements JWTModelCopyWith<$R, JWTModel, $Out> {
  _JWTModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JWTModel> $mapper =
      JWTModelMapper.ensureInitialized();
  @override
  $R call({Object? accessToken = $none, Object? refreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != $none) #accessToken: accessToken,
        if (refreshToken != $none) #refreshToken: refreshToken
      }));
  @override
  JWTModel $make(CopyWithData data) => JWTModel(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  JWTModelCopyWith<$R2, JWTModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _JWTModelCopyWithImpl($value, $cast, t);
}
