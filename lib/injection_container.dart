import 'package:get_it/get_it.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';

import 'features/auth/presentation/providers/auth_provider.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Top-Level Providers
  ///
  getIt.registerLazySingleton<AppSizeProvider>(() => AppSizeProvider());

  /// Auth
  ///
  getIt.registerLazySingleton<AuthProvider>(() => AuthProvider());
}
