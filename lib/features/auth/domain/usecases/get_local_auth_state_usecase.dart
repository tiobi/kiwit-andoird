import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../presentation/providers/auth_provider.dart';
import '../repositories/auth_repository.dart';

class GetLocalAuthStateUseCase {
  final AuthRepository repository;

  GetLocalAuthStateUseCase({required this.repository});

  Future<Either<Failure, AuthStateEnum>> call() async {
    throw UnimplementedError();
  }
}
