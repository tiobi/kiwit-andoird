// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_entity.dart';

class UserEntityMapper extends ClassMapperBase<UserEntity> {
  UserEntityMapper._();

  static UserEntityMapper? _instance;
  static UserEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserEntity';

  static int _$id(UserEntity v) => v.id;
  static const Field<UserEntity, int> _f$id = Field('id', _$id);
  static String _$email(UserEntity v) => v.email;
  static const Field<UserEntity, String> _f$email = Field('email', _$email);
  static String _$nickname(UserEntity v) => v.nickname;
  static const Field<UserEntity, String> _f$nickname =
      Field('nickname', _$nickname);
  static int _$point(UserEntity v) => v.point;
  static const Field<UserEntity, int> _f$point = Field('point', _$point);
  static PlanEnum _$plan(UserEntity v) => v.plan;
  static const Field<UserEntity, PlanEnum> _f$plan = Field('plan', _$plan);
  static StatusEnum _$status(UserEntity v) => v.status;
  static const Field<UserEntity, StatusEnum> _f$status =
      Field('status', _$status);

  @override
  final MappableFields<UserEntity> fields = const {
    #id: _f$id,
    #email: _f$email,
    #nickname: _f$nickname,
    #point: _f$point,
    #plan: _f$plan,
    #status: _f$status,
  };

  static UserEntity _instantiate(DecodingData data) {
    return UserEntity(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        nickname: data.dec(_f$nickname),
        point: data.dec(_f$point),
        plan: data.dec(_f$plan),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static UserEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserEntity>(map);
  }

  static UserEntity fromJson(String json) {
    return ensureInitialized().decodeJson<UserEntity>(json);
  }
}

mixin UserEntityMappable {
  String toJson() {
    return UserEntityMapper.ensureInitialized()
        .encodeJson<UserEntity>(this as UserEntity);
  }

  Map<String, dynamic> toMap() {
    return UserEntityMapper.ensureInitialized()
        .encodeMap<UserEntity>(this as UserEntity);
  }

  UserEntityCopyWith<UserEntity, UserEntity, UserEntity> get copyWith =>
      _UserEntityCopyWithImpl(this as UserEntity, $identity, $identity);
  @override
  String toString() {
    return UserEntityMapper.ensureInitialized()
        .stringifyValue(this as UserEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserEntityMapper.ensureInitialized()
                .isValueEqual(this as UserEntity, other));
  }

  @override
  int get hashCode {
    return UserEntityMapper.ensureInitialized().hashValue(this as UserEntity);
  }
}

extension UserEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserEntity, $Out> {
  UserEntityCopyWith<$R, UserEntity, $Out> get $asUserEntity =>
      $base.as((v, t, t2) => _UserEntityCopyWithImpl(v, t, t2));
}

abstract class UserEntityCopyWith<$R, $In extends UserEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? email,
      String? nickname,
      int? point,
      PlanEnum? plan,
      StatusEnum? status});
  UserEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserEntity, $Out>
    implements UserEntityCopyWith<$R, UserEntity, $Out> {
  _UserEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserEntity> $mapper =
      UserEntityMapper.ensureInitialized();
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
  UserEntity $make(CopyWithData data) => UserEntity(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email),
      nickname: data.get(#nickname, or: $value.nickname),
      point: data.get(#point, or: $value.point),
      plan: data.get(#plan, or: $value.plan),
      status: data.get(#status, or: $value.status));

  @override
  UserEntityCopyWith<$R2, UserEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserEntityCopyWithImpl($value, $cast, t);
}
