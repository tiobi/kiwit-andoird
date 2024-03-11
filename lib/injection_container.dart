import 'package:get_it/get_it.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';
import 'package:kiwit/core/responsive/providers/page_controller_provider.dart';
import 'package:kiwit/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/responsive/layouts/desktop_layout.dart';
import 'core/responsive/layouts/mobile_layout.dart';
import 'core/responsive/layouts/responsive_layout.dart';
import 'core/responsive/layouts/tablet_layout.dart';
import 'features/auth/data/datasources/auth_datasource.dart';
import 'features/auth/data/datasources/auth_datasource_impl.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/sign_in_with_apple_usecase.dart';
import 'features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'features/auth/domain/usecases/sign_in_with_kakao_usecase.dart';
import 'features/auth/domain/usecases/sign_out_usecase.dart';
import 'features/auth/domain/usecases/update_token_usecase.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Top-Level Providers and Services
  ///
  getIt.registerLazySingleton<AppSizeProvider>(
    () => AppSizeProvider(),
  );
  getIt.registerLazySingleton<PageControllerProvider>(
    () => PageControllerProvider(),
  );
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

  /// Layout
  ///
  getIt.registerLazySingleton<MobileLayout>(
    () => MobileLayout(),
  );
  getIt.registerLazySingleton<TabletLayout>(
    () => const TabletLayout(),
  );
  getIt.registerLazySingleton<DesktopLayout>(
    () => const DesktopLayout(),
  );
  getIt.registerLazySingleton<ResponsiveLayout>(
    () => ResponsiveLayout(
      mobileLayout: getIt<MobileLayout>(),
      tabletLayout: getIt<TabletLayout>(),
      desktopLayout: getIt<DesktopLayout>(),
    ),
  );

  /// Auth Data Sources and Repositories
  ///
  getIt.registerLazySingleton<AuthDataSource>(
    () => AuthDataSourceImpl(),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      dataSource: getIt<AuthDataSource>(),
    ),
  );

  /// Auth Use Cases
  ///
  getIt.registerLazySingleton<DeleteAccountUseCase>(
    () => DeleteAccountUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignInWithAppleUseCase>(
    () => SignInWithAppleUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignInWithGoogleUseCase>(
    () => SignInWithGoogleUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignInWithKakaoUseCase>(
    () => SignInWithKakaoUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignOutUseCase>(
    () => SignOutUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );
  getIt.registerLazySingleton<UpdateTokenUseCase>(
    () => UpdateTokenUseCase(
      repository: getIt<AuthRepository>(),
    ),
  );

  /// Auth Providers
  ///
  getIt.registerLazySingleton<AuthProvider>(
    () => AuthProvider(
      sharedPreferences: getIt<SharedPreferences>(),
      deleteAccountUseCase: getIt<DeleteAccountUseCase>(),
      signInUseCase: getIt<SignInUseCase>(),
      signInWithAppleUseCase: getIt<SignInWithAppleUseCase>(),
      signInWithGoogleUseCase: getIt<SignInWithGoogleUseCase>(),
      signInWithKakaoUseCase: getIt<SignInWithKakaoUseCase>(),
      signOutUseCase: getIt<SignOutUseCase>(),
      signUpUseCase: getIt<SignUpUseCase>(),
      updateTokenUseCase: getIt<UpdateTokenUseCase>(),
    ),
  );
}
