import '../repositories/auth_repository.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;

  SignInWithGoogleUseCase({required this.authRepository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
