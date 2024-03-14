import 'package:dart_mappable/dart_mappable.dart';

part 'user_entity.mapper.dart';

enum PlanEnum { basic, pro, premium }

enum StatusEnum { active, inactive, banned, deleted }

@MappableClass()
class UserEntity with UserEntityMappable {
  final int id;
  final String email;
  final String nickname;
  final int point;
  final PlanEnum plan;
  final StatusEnum status;

  UserEntity({
    required this.id,
    required this.email,
    required this.nickname,
    required this.point,
    required this.plan,
    required this.status,
  });

  static const fromMap = UserEntityMapper.fromMap;
  static const fromJson = UserEntityMapper.fromJson;
}
