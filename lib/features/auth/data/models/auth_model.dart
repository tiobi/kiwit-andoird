import 'package:dart_mappable/dart_mappable.dart';
import '../../domain/entities/auth_entity.dart';

part 'auth_model.mapper.dart';

@MappableClass()
class AuthModel extends AuthEntity with AuthModelMappable {
  AuthModel({
    required int userId,
    required String refreshToken,
    required String fcmToken,
    required DateTime latestVisit,
  }) : super(
          userId: userId,
          refreshToken: refreshToken,
          fcmToken: fcmToken,
          latestVisit: latestVisit,
        );

  static const fromMap = AuthModelMapper.fromMap;
  static const fromJson = AuthModelMapper.fromJson;
}
