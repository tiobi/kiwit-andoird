import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart';
import 'package:kiwit/features/auth/domain/usecases/update_token_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/auth/mock_auth_repository.mocks.dart';

void main() {
  late UpdateAccessTokenUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = UpdateAccessTokenUseCase(
      repository: repository,
    );
  });

  const String tRefreshToken = 'refreshToken';
  const String tNewAccessToken = 'newAccessToken';
  const String tNewRefreshToken = 'newRefreshToken';

  final AuthEntity tAuthEntity = AuthEntity(
    refreshToken: tRefreshToken,
  );
  final AuthEntity tNewAuthEntity = AuthEntity(
    accessToken: tNewAccessToken,
    refreshToken: tNewRefreshToken,
  );

  final Failure tFailure = AuthFailure(
    message: 'error',
    code: 400,
  );

  group('UpdateTokenUseCase Test', () {
    test('should get a new AuthEntity when update is successful', () async {
      // Arrange
      when(repository.updateAccessToken(refreshToken: tRefreshToken))
          .thenAnswer((_) async => Right(tNewAuthEntity));

      // Act
      final result = await useCase.call(refreshToken: tRefreshToken);

      // Assert
      expect(result, Right(tNewAuthEntity));
      verify(repository.updateAccessToken(refreshToken: tRefreshToken));
      verifyNoMoreInteractions(repository);
    });

    test('should get a failure when update is unsuccessful', () async {
      // Arrange
      when(repository.updateAccessToken(refreshToken: tRefreshToken))
          .thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await useCase.call(refreshToken: tRefreshToken);

      // Assert
      expect(result, Left(tFailure));
      verify(repository.updateAccessToken(refreshToken: tRefreshToken));
      verifyNoMoreInteractions(repository);
    });
  });
}
