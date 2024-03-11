import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failure.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase({required this.repository});

  Future<Either<Failure, Unit>> call() async {
    throw UnimplementedError();
  }
}
