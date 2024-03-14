// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_model.dart';

class UserModelMapper extends ClassMapperBase<UserModel> {
  UserModelMapper._();

  static UserModelMapper? _instance;
  static UserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserModelMapper._());
      UserEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserModel';

  static int _$id(UserModel v) => v.id;
  static const Field<UserModel, int> _f$id = Field('id', _$id);
  static String _$email(UserModel v) => v.email;
  static const Field<UserModel, String> _f$email = Field('email', _$email);
  static String _$nickname(UserModel v) => v.nickname;
  static const Field<UserModel, String> _f$nickname =
      Field('nickname', _$nickname);
  static int _$point(UserModel v) => v.point;
  static const Field<UserModel, int> _f$point = Field('point', _$point);
  static PlanEnum _$plan(UserModel v) => v.plan;
  static const Field<UserModel, PlanEnum> _f$plan = Field('plan', _$plan);
  static StatusEnum _$status(UserModel v) => v.status;
  static const Field<UserModel, StatusEnum> _f$status =
      Field('status', _$status);

  @override
  final MappableFields<UserModel> fields = const {
    #id: _f$id,
    #email: _f$email,
    #nickname: _f$nickname,
    #point: _f$point,
    #plan: _f$plan,
    #status: _f$status,
  };

  static UserModel _instantiate(DecodingData data) {
    return UserModel(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        nickname: data.dec(_f$nickname),
        point: data.dec(_f$point),
        plan: data.dec(_f$plan),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static UserModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserModel>(map);
  }

  static UserModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserModel>(json);
  }
}

mixin UserModelMappable {
  String toJson() {
    return UserModelMapper.ensureInitialized()
        .encodeJson<UserModel>(this as UserModel);
  }

  Map<String, dynamic> toMap() {
    return UserModelMapper.ensureInitialized()
        .encodeMap<UserModel>(this as UserModel);
  }

  UserModelCopyWith<UserModel, UserModel, UserModel> get copyWith =>
      _UserModelCopyWithImpl(this as UserModel, $identity, $identity);
  @override
  String toString() {
    return UserModelMapper.ensureInitialized()
        .stringifyValue(this as UserModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserModelMapper.ensureInitialized()
                .isValueEqual(this as UserModel, other));
  }

  @override
  int get hashCode {
    return UserModelMapper.ensureInitialized().hashValue(this as UserModel);
  }
}

extension UserModelValueCopy<$R, $Out> on ObjectCopyWith<$R, UserModel, $Out> {
  UserModelCopyWith<$R, UserModel, $Out> get $asUserModel =>
      $base.as((v, t, t2) => _UserModelCopyWithImpl(v, t, t2));
}

abstract class UserModelCopyWith<$R, $In extends UserModel, $Out>
    implements UserEntityCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {int? id,
      String? email,
      String? nickname,
      int? point,
      PlanEnum? plan,
      StatusEnum? status});
  UserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserModel, $Out>
    implements UserModelCopyWith<$R, UserModel, $Out> {
  _UserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserModel> $mapper =
      UserModelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? email,
          String? nickname,
          int? point,
          PlanEnum? plan,
          StatusEnum? status}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (email != null) #email: email,
        if (nickname != null) #nickname: nickname,
        if (point != null) #point: point,
        if (plan != null) #plan: plan,
        if (status != null) #status: status
      }));
  @override
  UserModel $make(CopyWithData data) => UserModel(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email),
      nickname: data.get(#nickname, or: $value.nickname),
      point: data.get(#point, or: $value.point),
      plan: data.get(#plan, or: $value.plan),
      status: data.get(#status, or: $value.status));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
