import 'package:dart_mappable/dart_mappable.dart';

part 'auth_entity.mapper.dart';

@MappableClass()
class AuthEntity with AuthEntityMappable {
  String? email;
  String? nickname;
  String? accessToken;
  String? refreshToken;
  String? provider;

  AuthEntity({
    this.email,
    this.nickname,
    this.accessToken,
    this.refreshToken,
    this.provider,
  });

  static const fromMap = AuthEntityMapper.fromMap;
  static const fromJson = AuthEntityMapper.fromJson;
}
