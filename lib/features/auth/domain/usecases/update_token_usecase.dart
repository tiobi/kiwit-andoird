import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

class UpdateTokenUseCase {
  final AuthRepository repository;

  UpdateTokenUseCase({required this.repository});

  Future<void> call() async {
    throw UnimplementedError();
  }
}
