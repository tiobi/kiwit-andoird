import 'package:dart_mappable/dart_mappable.dart';
import 'package:kiwit/features/auth/domain/entities/jwt_entity.dart';

part 'jwt_model.mapper.dart';

@MappableClass()
class JWTModel extends JWTEntity with JWTModelMappable {
  JWTModel({
    String? accessToken,
    String? refreshToken,
  });

  static const fromJson = JWTModelMapper.fromJson;
  static const fromMap = JWTModelMapper.fromMap;
}
