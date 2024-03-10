import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthStateEnum { authenticated, unauthenticated }

class AuthProvider extends ChangeNotifier {
  AuthStateEnum _authState = AuthStateEnum.unauthenticated;

  AuthStateEnum get authState => _authState;

  final SharedPreferences sharedPreferences;

  AuthProvider({required this.sharedPreferences});

  void signInWithSocial() async {
    // Todo: Implement the social sign in
    _authState = AuthStateEnum.authenticated;
    notifyListeners();
  }

  void signOut() async {
    _authState = AuthStateEnum.unauthenticated;
    notifyListeners();
  }
}
