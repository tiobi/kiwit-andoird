import 'package:dart_mappable/dart_mappable.dart';

part 'auth_entity.mapper.dart';

@MappableClass()
class AuthEntity with AuthEntityMappable {
  final int userId;
  final String refreshToken;
  final String fcmToken;
  final DateTime latestVisit;

  AuthEntity({
    required this.userId,
    required this.refreshToken,
    required this.fcmToken,
    required this.latestVisit,
  });

  static const fromMap = AuthEntityMapper.fromMap;
  static const fromJson = AuthEntityMapper.fromJson;
}
