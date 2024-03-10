import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthStateEnum { authenticated, unauthenticated }

class AuthProvider extends ChangeNotifier {
  AuthStateEnum _authState = AuthStateEnum.unauthenticated;

  AuthStateEnum get authState => _authState;

  final SharedPreferences sharedPreferences;

  AuthProvider({required this.sharedPreferences});

  Future<AuthStateEnum> getAuthState() async {
    final isAuthenticated =
        sharedPreferences.getBool('isAuthenticated') ?? false;
    return isAuthenticated
        ? AuthStateEnum.authenticated
        : AuthStateEnum.unauthenticated;
  }

  Future<void> signInWithSocial() async {
    // Todo: Implement the social sign in
    _authState = AuthStateEnum.authenticated;
    await sharedPreferences.setBool('isAuthenticated', true);

    notifyListeners();
  }

  Future<void> signOut() async {
    _authState = AuthStateEnum.unauthenticated;
    await sharedPreferences.setBool('isAuthenticated', false);

    notifyListeners();
  }
}
