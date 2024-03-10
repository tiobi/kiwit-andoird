import 'package:get_it/get_it.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';
import 'package:kiwit/core/responsive/providers/page_controller_provider.dart';
import 'core/responsive/layouts/desktop_layout.dart';
import 'core/responsive/layouts/mobile_layout.dart';
import 'core/responsive/layouts/responsive_layout.dart';
import 'core/responsive/layouts/tablet_layout.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Top-Level Providers
  ///
  getIt.registerLazySingleton<AppSizeProvider>(
    () => AppSizeProvider(),
  );
  getIt.registerLazySingleton<PageControllerProvider>(
    () => PageControllerProvider(),
  );

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

  /// Auth
  ///
  getIt.registerLazySingleton<AuthProvider>(() => AuthProvider());
}
