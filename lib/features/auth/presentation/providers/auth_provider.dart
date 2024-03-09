import 'package:flutter/material.dart';
import 'package:kiwit/config/routes/app_routes.dart';

class AuthProvider extends ChangeNotifier {
  void navigateToHome({
    required BuildContext context,
  }) {
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  void signInWithSocial({required BuildContext context}) async {
    navigateToHome(context: context);
  }
}
