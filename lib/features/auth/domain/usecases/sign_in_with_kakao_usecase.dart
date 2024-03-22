import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/data/models/jwt_model.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

class SignInWithKakaoUseCase {
  final AuthRepository repository;

  SignInWithKakaoUseCase({required this.repository});

  Future<Either<Failure, Either<AuthEntity, JWTModel>>> call() async {
    throw UnimplementedError();
  }
}
