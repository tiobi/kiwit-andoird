import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

class UpdateAccessTokenUseCase {
  final AuthRepository repository;

  UpdateAccessTokenUseCase({required this.repository});

  Future<Either<Failure, AuthEntity>> call(
      {required String refreshToken}) async {
    return repository.updateAccessToken(refreshToken: refreshToken);
  }
}
