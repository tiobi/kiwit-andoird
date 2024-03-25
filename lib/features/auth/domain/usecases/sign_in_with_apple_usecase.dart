import 'package:dartz/dartz.dart';
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failure.dart';
import '../entities/auth_entity.dart';

class SignInWithAppleUseCase {
  final AuthRepository repository;

  SignInWithAppleUseCase({required this.repository});

  /// When Status Code 202 is returned,
  /// the user is not registered to the app yet.
  /// Navigate to the registration page.
  ///

  Future<Either<Failure, AuthEntity>> call() async {
    return repository.signInWithApple();
  }
}
