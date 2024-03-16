import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/errors/auth_failure.dart';
import 'package:kiwit/core/errors/failure.dart';
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks/auth/auth_repository_mock.mocks.dart';

void main() {
  late SignInUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = SignInUseCase(repository: repository);
  });

  final Failure failure = AuthFailure(
    code: 400,
    message: 'error',
  );

  group('SignInUseCase Test', () {
    test('should return unit when sign in', () async {
      // Arrange
      when(repository.signIn())
          .thenAnswer((_) async => const Right(unit as AuthEntity));

      // Act
      final result = await useCase();

      // Assert
      expect(result, const Right(unit));
      verify(repository.signIn());
      verifyNoMoreInteractions(repository);
    });
  });
}
