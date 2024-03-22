import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/features/auth/data/datasources/remote/remote_auth_datasource.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../mocks/database/mock_dio.mocks.dart';

void main() {
  late RemoteAuthDataSource dataSource;
  late MockDio dio;

  setUp(() {
    dio = MockDio();
    dataSource = RemoteAuthDataSource(dio);
  });

  const String tAccessToken = 'accessToken';
  const String tInvalidAccessToken = 'invalidAccessToken';

  final HttpResponse tHttpResponse = HttpResponse(
    null,
    Response(statusCode: 200, requestOptions: RequestOptions(path: '')),
  );
  final HttpResponse tInvalidRequestHttpResponse = HttpResponse(
    null,
    Response(statusCode: 400, requestOptions: RequestOptions(path: '')),
  );

  group('RemoteAuthDataSource Test', () {
    /// Delete Account Tests
    ///
    group('Delete Account Test', () {
      test('should call deleteAccount on dio', () async {
        // Arrange
        when(dio.delete(any)).thenAnswer(
          (_) async => Response(
            data: null,
            statusCode: 200,
            requestOptions: RequestOptions(),
          ),
        );

        // Act
        final result =
            await dataSource.deleteAccount(accessToken: tAccessToken);

        // Assert
        expect(result, tHttpResponse);
        verify(dataSource.deleteAccount(accessToken: tAccessToken)).called(1);
        verifyNoMoreInteractions(dataSource);
      });
    });
  });
}
