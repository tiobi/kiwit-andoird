import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

class SignInWithAppleUseCase {
  final AuthRepository repository;

  SignInWithAppleUseCase({required this.repository});

  /// When Status Code 202 is returned,
  /// the user is not registered to the app yet.
  /// Navigate to the registration page.
  ///

  Future<void> call() async {
    throw UnimplementedError();
  }
}
