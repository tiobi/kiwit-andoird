import 'package:dart_mappable/dart_mappable.dart';

part 'auth_entity.mapper.dart';

@MappableClass()
class AuthEntity with AuthEntityMappable {
  final int user_id;
  final String refresh_token;
  final String fcm_token;
  final DateTime latest_visit;

  AuthEntity({
    required this.user_id,
    required this.refresh_token,
    required this.fcm_token,
    required this.latest_visit,
  });

  static const fromMap = AuthEntityMapper.fromMap;
  static const fromJson = AuthEntityMapper.fromJson;
}
