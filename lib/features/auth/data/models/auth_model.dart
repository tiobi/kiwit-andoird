import 'package:dart_mappable/dart_mappable.dart';
import '../../domain/entities/auth_entity.dart';

part 'auth_model.mapper.dart';

@MappableClass()
class AuthModel extends AuthEntity with AuthModelMappable {}
