import 'package:dart_mappable/dart_mappable.dart';
import 'package:kiwit/features/user/domain/entities/user_entity.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel extends UserEntity with UserModelMappable {
  UserModel({
    required int id,
    required String email,
    required String nickname,
    required int point,
    required PlanEnum plan,
    required StatusEnum status,
  }) : super(
          id: id,
          email: email,
          nickname: nickname,
          point: point,
          plan: plan,
          status: status,
        );

  static const fromMap = UserModelMapper.fromMap;
  static const fromJson = UserModelMapper.fromJson;
}
