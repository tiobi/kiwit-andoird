import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart';

import '../../../../core/errors/failure.dart';
import '../repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase({required this.repository});

  Future<Either<Failure, AuthEntity>> call() async {
    return await repository.signUp();
  }
}
