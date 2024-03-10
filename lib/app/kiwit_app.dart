/// Flutter and Dart packages
///
import 'package:flutter/material.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';
import 'package:kiwit/core/responsive/providers/page_controller_provider.dart';
import 'package:kiwit/features/auth/presentation/pages/log_in_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/responsive/layouts/responsive_layout.dart';
import '../features/auth/presentation/providers/auth_provider.dart';
import '../injection_container.dart';

/// Project packages
///
import './constants/app_string.dart';
import '../config/theme/app_theme.dart';
import '../config/routes/app_routes.dart';

class KiwitApp extends StatelessWidget {
  const KiwitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, shapshot) {
          if (!shapshot.hasData) {
            return const CircularProgressIndicator();
          }
          return MultiProvider(
            // Todo: Setup Providers
            /// Providers that are used across the app is added here.
            /// Try to keep the providers to a minimum in the tree.
            ///
            providers: [
              ChangeNotifierProvider<AppSizeProvider>(
                create: (_) => getIt<AppSizeProvider>(),
              ),
              ChangeNotifierProvider<PageControllerProvider>(
                create: (_) => getIt<PageControllerProvider>(),
              ),
              ChangeNotifierProvider<AuthProvider>(
                create: (_) => getIt<AuthProvider>(),
              ),
            ],

            child: MaterialApp(
              title: AppString.appTitle,
              // Todo: Setup Theme
              theme: ThemeManager.getTheme(),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: (settings) =>
                  AppRouteManager.generateRoute(settings),

              // Todo: Setup the StreamBuilder
              ///
              home: Consumer<AuthProvider>(builder: (context, authState, _) {
                AppSizeProvider appSizeProvider = getIt<AppSizeProvider>();

                if (appSizeProvider.size == null) {
                  appSizeProvider.setUpAppSize(context: context);
                }

                if (authState.authState == AuthStateEnum.unauthenticated) {
                  return const LogInPage();
                }

                return getIt<ResponsiveLayout>();
              }),
            ),
          );
        });
  }
}
