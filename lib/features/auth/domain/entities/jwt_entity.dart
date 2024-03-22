import 'package:dart_mappable/dart_mappable.dart';

part 'jwt_entity.mapper.dart';

@MappableClass()
class JWTEntity with JWTEntityMappable {
  String? accessToken;
  String? refreshToken;

  JWTEntity({
    this.accessToken,
    this.refreshToken,
  });

  static const fromJson = JWTEntityMapper.fromJson;
  static const fromMap = JWTEntityMapper.fromMap;
}
