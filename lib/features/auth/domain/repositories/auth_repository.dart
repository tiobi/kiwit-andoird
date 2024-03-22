import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/data/models/jwt_model.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> signUp();
  Future<Either<Failure, AuthEntity>> signIn({
    required String token,
    required String provider,
  });
  Future<Either<Failure, Unit>> signOut({
    required String accessToken,
  });
  Future<Either<Failure, Unit>> deleteAccount({
    required String accessToken,
  });

  Future<Either<Failure, AuthEntity>> signInWithGoogle();
  Future<Either<Failure, AuthEntity>> signInWithApple();
  Future<Either<Failure, AuthEntity>> signInWithKakao();

  Future<Either<Failure, JWTModel>> updateToken({
    required String refreshToken,
  });
}
