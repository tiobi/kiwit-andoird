import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase({required this.repository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
