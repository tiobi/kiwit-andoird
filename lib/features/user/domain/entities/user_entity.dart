import 'package:dart_mappable/dart_mappable.dart';

part 'user_entity.mapper.dart';

enum PlanEnum { basic, pro, premium }

enum StatusEnum { active, inactive, banned, deleted }

@MappableClass()
class UserEntity with UserEntityMappable {
  int? id;
  String? email;
  String? nickname;
  int? point;
  PlanEnum? plan;
  StatusEnum? status;

  UserEntity({
    this.id,
    this.email,
    this.nickname,
    this.point,
    this.plan,
    this.status,
  });

  static const fromMap = UserEntityMapper.fromMap;
  static const fromJson = UserEntityMapper.fromJson;
}
