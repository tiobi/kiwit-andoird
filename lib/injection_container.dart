import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
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
import 'features/auth/data/datasources/remote/remote_auth_datasource.dart';
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
    () => PageControllerProvider(
      pageController: PageController(keepPage: true, initialPage: 0),
    ),
  );
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );

  /// Layout
  ///
  getIt.registerLazySingleton<ResponsiveLayout>(
    () => const ResponsiveLayout(
      mobileLayout: MobileLayout(),
      tabletLayout: TabletLayout(),
      desktopLayout: DesktopLayout(),
    ),
  );

  /// Auth Data Sources and Repositories
  ///
  getIt.registerLazySingleton<RemoteAuthDataSource>(
    () => RemoteAuthDataSource(
      getIt<Dio>(),
    ),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      dataSource: getIt<RemoteAuthDataSource>(),
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
  getIt.registerLazySingleton<UpdateAccessTokenUseCase>(
    () => UpdateAccessTokenUseCase(
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
      updateTokenUseCase: getIt<UpdateAccessTokenUseCase>(),
    ),
  );
}
