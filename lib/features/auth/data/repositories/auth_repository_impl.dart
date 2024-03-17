import 'package:dartz/dartz.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../datasources/remote/remote_auth_datasource.dart';

class AuthRepositoryImpl extends AuthRepository {
  final RemoteAuthDataSource dataSource;

  AuthRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, Unit>> deleteAccount({
    required String accessToken,
  }) async {
    final response = await dataSource.deleteAccount(accessToken: accessToken);

    if (response.statusCode == 200) {
      return const Right(unit);
    } else {
      return Left(AuthFailure(
        code: response.statusCode,
        message: response.body,
      ));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> signIn() {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthEntity>> signInWithApple() {
    // TODO: implement logInWithApple
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthEntity>> signInWithGoogle() {
    // TODO: implement logInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthEntity>> signInWithKakao() {
    // TODO: implement logInWithKakao
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthEntity>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthEntity>> updateToken() {
    // TODO: implement updateToken
    throw UnimplementedError();
  }
}
