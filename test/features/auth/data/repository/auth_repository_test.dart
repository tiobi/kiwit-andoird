import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../mocks/auth/mock_remote_auth_datasource.mocks.dart';

void main() {
  late AuthRepository repository;
  late MockRemoteAuthDataSource dataSource;

  setUp(() {
    dataSource = MockRemoteAuthDataSource();
    repository = AuthRepositoryImpl(dataSource: dataSource);
  });

  const String tAccessToken = 'accessToken';
  const String tInvalidAccessToken = 'invalidAccessToken';

  final HttpResponse tHttpResponse = HttpResponse(null,
      Response(statusCode: 200, requestOptions: RequestOptions(path: '')));
  final HttpResponse tInvalidRequestHttpResponse = HttpResponse(null,
      Response(statusCode: 400, requestOptions: RequestOptions(path: '')));
  final HttpResponse tInvalidAccessTokenHttpResponse = HttpResponse(null,
      Response(statusCode: 401, requestOptions: RequestOptions(path: '')));

  final Failure tInvalidRequestFailure =
      AuthFailure(code: 400, message: 'Invalid Request');
  final Failure tInvalidAccessTokenFailure =
      AuthFailure(code: 401, message: 'Invalid Access Token');
  final Failure tServerFailure =
      AuthFailure(code: 500, message: 'Server Error');

  group('AuthRepository Test', () {
    /// Delete Account Tests
    ///
    group('Delete Account', () {
      test('should call deleteAccount on dataSource', () async {
        // Arrange
        when(dataSource.deleteAccount(accessToken: tAccessToken))
            .thenAnswer((_) async => tHttpResponse);

        // Act
        final result =
            await repository.deleteAccount(accessToken: tAccessToken);

        // Assert
        expect(result, const Right(unit));
        verify(dataSource.deleteAccount(accessToken: tAccessToken)).called(1);
        verifyNoMoreInteractions(dataSource);
      });

      test(
          'should return a 400 failure when delete account fails with invalid request',
          () async {
        // Arrange
        when(dataSource.deleteAccount(accessToken: tInvalidAccessToken))
            .thenAnswer((_) async => tInvalidRequestHttpResponse);

        // Act
        final result =
            await repository.deleteAccount(accessToken: tInvalidAccessToken);

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold((fail) => fail, (r) => r), isA<Failure>());
      });

      test(
          'should return a 401 failure when delete account fails with invalid access token',
          () async {
        // Arrange
        when(dataSource.deleteAccount(accessToken: tInvalidAccessToken))
            .thenAnswer((_) async => tInvalidAccessTokenHttpResponse);

        // Act
        final result =
            await repository.deleteAccount(accessToken: tInvalidAccessToken);

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold((fail) => fail, (r) => r), isA<Failure>());
      });
    });
  });
}
