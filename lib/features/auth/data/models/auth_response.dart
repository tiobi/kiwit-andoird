import 'package:dart_mappable/dart_mappable.dart';

part 'auth_response.mapper.dart';

@MappableClass()
class AuthResponse with AuthResponseMappable {
  final int statusCode;
  final String body;

  AuthResponse({
    required this.statusCode,
    required this.body,
  });

  static const fromMap = AuthResponseMapper.fromMap;
  static const fromJson = AuthResponseMapper.fromMap;
}
