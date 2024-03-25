import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_with_apple_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/auth/mock_auth_repository.mocks.dart';

void main() {
  late SignInWithAppleUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = SignInWithAppleUseCase(repository: repository);
  });

  final AuthEntity tAuthEntity = AuthEntity();

  final Failure notRegisteredFailure = AuthFailure(
    code: 202,
    message: "User not registered yet",
  );

  final Failure tokenFailure = AuthFailure(
    code: 400,
    message: "Token or Provider not valid",
  );

  group('SignInWithApple test', () {
    test('should return a AuthEntity when the sign in is successful', () async {
      // Arrange
      when(repository.signInWithApple())
          .thenAnswer((_) async => Right(tAuthEntity));

      // Act
      final result = await useCase();

      // Assert
      expect(result, Right(tAuthEntity));
      verify(repository.signInWithApple()).called(1);
      verifyNoMoreInteractions(repository);
    });

    test('should return a failure when the user is not registered', () async {
      // Arrange
      when(repository.signInWithApple())
          .thenAnswer((_) async => Left(notRegisteredFailure));

      // Act
      final result = await useCase();

      // Assert
      expect(result, Left(notRegisteredFailure));
      verify(repository.signInWithApple()).called(1);
      verifyNoMoreInteractions(repository);
    });

    test('should return a failure when the token is not valid', () async {
      // Arrange
      when(repository.signInWithApple())
          .thenAnswer((_) async => Left(tokenFailure));

      // Act
      final result = await useCase();

      // Assert
      expect(result, Left(tokenFailure));
      verify(repository.signInWithApple()).called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
