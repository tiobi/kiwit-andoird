import 'package:dart_mappable/dart_mappable.dart';
import '../../domain/entities/auth_entity.dart';

part 'auth_model.mapper.dart';

@MappableClass()
class AuthModel extends AuthEntity with AuthModelMappable {
  AuthModel({
    required int user_id,
    required String refresh_token,
    required String fcm_token,
    required DateTime latest_visit,
  }) : super(
          user_id: user_id,
          refresh_token: refresh_token,
          fcm_token: fcm_token,
          latest_visit: latest_visit,
        );

  static const fromMap = AuthModelMapper.fromMap;
  static const fromJson = AuthModelMapper.fromJson;
}
