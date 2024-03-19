import 'package:dart_mappable/dart_mappable.dart';
import 'package:kiwit/features/user/domain/entities/user_entity.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel extends UserEntity with UserModelMappable {
  UserModel({
    int? id,
    String? email,
    String? nickname,
    int? point,
    PlanEnum? plan,
    StatusEnum? status,
  });

  static const fromMap = UserModelMapper.fromMap;
  static const fromJson = UserModelMapper.fromJson;
}
