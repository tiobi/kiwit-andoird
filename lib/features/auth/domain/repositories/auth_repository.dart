import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> signUp();
  Future<Either<Failure, AuthEntity>> signIn();
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, Unit>> deleteAccount();

  Future<Either<Failure, AuthEntity>> logInWithGoogle();
  Future<Either<Failure, AuthEntity>> logInWithApple();
  Future<Either<Failure, AuthEntity>> logInWithKakao();

  Future<Either<Failure, AuthEntity>> updateToken();
}
