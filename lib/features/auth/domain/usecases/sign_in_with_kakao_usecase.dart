import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

class SignInWithKakaoUseCase {
  final AuthRepository repository;

  SignInWithKakaoUseCase({required this.repository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
