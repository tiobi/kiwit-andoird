import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../repositories/auth_repository.dart';

class DeleteAccountUseCase {
  final AuthRepository repository;

  DeleteAccountUseCase({required this.repository});

  Future<Either<Failure, Unit>> call({required String accessToken}) async {
    return repository.deleteAccount(accessToken: accessToken);
  }
}
