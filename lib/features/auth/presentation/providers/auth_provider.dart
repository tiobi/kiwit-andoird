import 'package:flutter/material.dart';

enum AuthStateEnum { authenticated, unauthenticated }

class AuthProvider extends ChangeNotifier {
  AuthStateEnum _authState = AuthStateEnum.unauthenticated;

  AuthStateEnum get authState => _authState;

  void authStateChanges() {}

  void signInWithSocial() async {
    // Todo: Implement the social sign in
    _authState = AuthStateEnum.authenticated;
    notifyListeners();
  }

  void signOut() {
    _authState = AuthStateEnum.unauthenticated;
    notifyListeners();
  }
}
