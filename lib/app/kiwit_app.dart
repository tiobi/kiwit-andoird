/// Flutter and Dart packages
///
import 'package:flutter/material.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';
import 'package:provider/provider.dart';

import '../injection_container.dart';

/// Project packages
///
import './constants/app_string.dart';
import '../config/theme/app_theme.dart';
import '../config/routes/app_routes.dart';

/// Pages
///
import '../features/auth/presentation/pages/log_in_page.dart';

class KiwitApp extends StatelessWidget {
  const KiwitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Todo: Setup Providers
      /// Providers that are used across the app is added here.
      /// Try to keep the providers to a minimum in the tree.
      ///
      providers: [
        ChangeNotifierProvider<AppSizeProvider>(
          create: (_) => getIt<AppSizeProvider>(),
        ),
      ],

      child: MaterialApp(
        title: AppString.appTitle,
        // Todo: Setup Theme
        theme: ThemeManager.getTheme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRouteManager.generateRoute(settings),

        // Todo: Setup the StreamBuilder
        ///
        home: StreamBuilder(
            stream: null,
            builder: (context, _) {
              AppSizeProvider appSizeProvider = getIt<AppSizeProvider>();

              if (appSizeProvider.size == null) {
                appSizeProvider.setUpAppSize(context: context);
              }

              return const LogInPage();
            }),
      ),
    );
  }
}
