import '../repositories/auth_repository.dart';

class DeleteAccountUseCase {
  final AuthRepository repository;

  DeleteAccountUseCase({required this.repository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
