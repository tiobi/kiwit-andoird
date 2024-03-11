import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

class SignInWithAppleUseCase {
  final AuthRepository repository;

  SignInWithAppleUseCase({required this.repository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
