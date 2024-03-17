import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_with_apple_usecase.dart';

import '../../../../mocks/auth/auth_repository_mock.mocks.dart';

void main() {
  late SignInWithAppleUseCase useCase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    useCase = SignInWithAppleUseCase(repository: repository);
  });

  group('SignInWithAppleUseCase Test', () {
    test('should get ', () {});
  });
}
