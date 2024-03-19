import 'package:flutter/material.dart';
import 'package:kiwit/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/usecases/sign_in_usecase.dart';
import '../../domain/usecases/sign_in_with_apple_usecase.dart';
import '../../domain/usecases/sign_in_with_google_usecase.dart';
import '../../domain/usecases/sign_in_with_kakao_usecase.dart';
import '../../domain/usecases/sign_out_usecase.dart';
import '../../domain/usecases/sign_up_usecase.dart';
import '../../domain/usecases/update_token_usecase.dart';

enum AuthStateEnum { authenticated, unauthenticated }

class AuthProvider extends ChangeNotifier {
  final SharedPreferences sharedPreferences;
  final DeleteAccountUseCase deleteAccountUseCase;
  final SignInUseCase signInUseCase;
  final SignInWithAppleUseCase signInWithAppleUseCase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final SignInWithKakaoUseCase signInWithKakaoUseCase;
  final SignOutUseCase signOutUseCase;
  final SignUpUseCase signUpUseCase;
  final UpdateTokenUseCase updateTokenUseCase;

  AuthProvider({
    required this.sharedPreferences,
    required this.deleteAccountUseCase,
    required this.signInUseCase,
    required this.signInWithAppleUseCase,
    required this.signInWithGoogleUseCase,
    required this.signInWithKakaoUseCase,
    required this.signOutUseCase,
    required this.signUpUseCase,
    required this.updateTokenUseCase,
  });

  AuthStateEnum _authState = AuthStateEnum.unauthenticated;
  AuthStateEnum get authState => _authState;

  Future<AuthStateEnum> getAuthState() async {
    final isAuthenticated =
        sharedPreferences.getBool('isAuthenticated') ?? false;
    return isAuthenticated
        ? AuthStateEnum.authenticated
        : AuthStateEnum.unauthenticated;
  }

  Future<void> tempSignInWithSocial() async {
    // Todo: Implement the social sign in
    _authState = AuthStateEnum.authenticated;
    await sharedPreferences.setBool('isAuthenticated', true);

    notifyListeners();
  }

  Future<void> tempSignOut() async {
    _authState = AuthStateEnum.unauthenticated;
    await sharedPreferences.setBool('isAuthenticated', false);

    notifyListeners();
  }

  Future<void> deleteUser() async {
    final accessToken = sharedPreferences.getString('accessToken') ?? '';
    final result = await deleteAccountUseCase(accessToken: accessToken);

    if (result.isRight()) {
      _authState = AuthStateEnum.unauthenticated;
      await sharedPreferences.setBool('isAuthenticated', false);
      await sharedPreferences.remove('accessToken');
      await sharedPreferences.remove('refreshToken');
      notifyListeners();
    } else if (result.isLeft()) {
      // Todo: Handle the error
    }
  }
}
