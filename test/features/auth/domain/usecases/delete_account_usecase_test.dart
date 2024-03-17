import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/auth/auth_repository_mock.mocks.dart';

void main() {
  late DeleteAccountUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = DeleteAccountUseCase(repository: repository);
  });

  final Failure failure = AuthFailure(
    code: 400,
    message: 'error',
  );

  const String tAuthToken = 'token';

  group('DeleteAccountUseCase', () {
    test('should return unit when delete account', () async {
      // Arrange
      when(repository.deleteAccount(accessToken: tAuthToken))
          .thenAnswer((_) async => const Right(unit));

      // Act
      final result = await useCase(accessToken: tAuthToken);

      // Assert
      expect(result, const Right(unit));
      verify(repository.deleteAccount(accessToken: tAuthToken));
      verifyNoMoreInteractions(repository);
    });

    test('should return a failure when delete account fails', () async {
      // Arrange
      when(repository.deleteAccount(accessToken: tAuthToken))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await useCase(accessToken: tAuthToken);

      // Assert
      expect(result, Left(failure));
      verify(repository.deleteAccount(accessToken: tAuthToken));
      verifyNoMoreInteractions(repository);
    });
  });
}
