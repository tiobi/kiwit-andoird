import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/auth/mock_auth_repository.mocks.dart';

void main() {
  late SignOutUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = SignOutUseCase(repository: repository);
  });

  const String tAccessToken = 'accessToken';
  const String tInvalidAccessToken = 'invalidAccessToken';

  final Failure tInvalidAccessTokenFailure =
      AuthFailure(code: 401, message: 'Invalid Access Token');
  final Failure tServerFailure =
      AuthFailure(code: 500, message: 'Server Error');

  group('SignOutUseCase Test', () {
    test('should return unit when sign out is successful', () async {
      // Arrange
      when(repository.signOut(accessToken: tAccessToken))
          .thenAnswer((_) async => const Right(unit));

      // Act
      final result = await useCase(accessToken: tAccessToken);

      // Assert
      expect(result, const Right(unit));
      verify(repository.signOut(accessToken: tAccessToken)).called(1);
      verifyNoMoreInteractions(repository);
    });

    test(
        'should return a 401 failure when sign out fails with invalid access token',
        () async {
      // Arrange
      when(repository.signOut(accessToken: tInvalidAccessToken))
          .thenAnswer((_) async => Left(tInvalidAccessTokenFailure));

      // Act
      final result = await useCase(accessToken: tInvalidAccessToken);

      // Assert
      expect(result, Left(tInvalidAccessTokenFailure));
      verify(repository.signOut(accessToken: tInvalidAccessToken)).called(1);
      verifyNoMoreInteractions(repository);
    });

    test('should return a server failure when sign out fails with server error',
        () async {
      // Arrange
      when(repository.signOut(accessToken: tAccessToken))
          .thenAnswer((_) async => Left(tServerFailure));

      // Act
      final result = await useCase(accessToken: tAccessToken);

      // Assert
      expect(result, Left(tServerFailure));
      verify(repository.signOut(accessToken: tAccessToken)).called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
