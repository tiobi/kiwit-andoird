import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/data/models/jwt_model.dart';
import 'package:kiwit/features/auth/domain/usecases/update_token_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/auth/mock_auth_repository.mocks.dart';

void main() {
  late UpdateTokenUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = UpdateTokenUseCase(repository: repository);
  });

  const String tAccessToken = 'accessToken';
  const String tNewAccessToken = 'newAccessToken';
  const String tRefreshToken = 'refreshToken';
  const String tNewRefreshToken = 'newRefreshToken';
  const String tInvalidRefreshToken = 'invalidRefreshToken';

  final JWTModel tJWTRequest =
      JWTModel(accessToken: tAccessToken, refreshToken: tRefreshToken);
  final JWTModel tInvalidJWTRequest =
      JWTModel(accessToken: tAccessToken, refreshToken: tInvalidRefreshToken);

  final JWTModel tJWTResponse =
      JWTModel(accessToken: tNewAccessToken, refreshToken: tNewRefreshToken);

  final Failure tInvalidAccessTokenFailure =
      AuthFailure(code: 401, message: 'Invalid Access Token');

  group('UpdateTokenUseCase Test', () {
    test('should return JWT when update is successful', () async {
      // Arrange
      when(repository.updateToken(refreshToken: tJWTRequest.refreshToken))
          .thenAnswer((_) async => Right(tJWTResponse));

      // Act
      final result = await useCase(refreshToken: tJWTRequest.refreshToken);

      // Assert
      expect(result, Right(tJWTResponse));
      verify(repository.updateToken(refreshToken: tJWTRequest.refreshToken))
          .called(1);
      verifyNoMoreInteractions(repository);
    });

    test('should return a failure when update is unsuccessful', () async {
      // Arrange
      when(repository.updateToken(refreshToken: tJWTRequest.refreshToken))
          .thenAnswer((_) async => Left(tInvalidAccessTokenFailure));

      // Act
      final result = await useCase(refreshToken: tJWTRequest.refreshToken);

      // Assert
      expect(result, Left(tInvalidAccessTokenFailure));
      verify(repository.updateToken(refreshToken: tJWTRequest.refreshToken))
          .called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
