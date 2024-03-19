import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> signUp();
  Future<Either<Failure, AuthEntity>> signIn();
  Future<Either<Failure, Unit>> signOut({
    required String accessToken,
  });
  Future<Either<Failure, Unit>> deleteAccount({
    required String accessToken,
  });

  Future<Either<Failure, AuthEntity>> signInWithGoogle();
  Future<Either<Failure, AuthEntity>> signInWithApple();
  Future<Either<Failure, AuthEntity>> signInWithKakao();

  Future<Either<Failure, AuthEntity>> updateToken();
}
