import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/data/models/jwt_model.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failure.dart';

class UpdateTokenUseCase {
  final AuthRepository repository;

  UpdateTokenUseCase({required this.repository});

  Future<Either<Failure, JWTModel>> call({required String refreshToken}) async {
    return repository.updateToken(refreshToken: refreshToken);
  }
}
