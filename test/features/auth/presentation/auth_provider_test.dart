import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/features/auth/presentation/providers/auth_provider.dart';

import 'auth_provider_mocks.dart';

void main() {
  late AuthProvider authProvider;
  late MockSharedPreferences sharedPreferences;

  setUp(() {
    sharedPreferences = MockSharedPreferences();
    authProvider = AuthProvider(
      sharedPreferences: sharedPreferences,
      deleteAccountUseCase: MockDeleteAccountUseCase(),
      signInUseCase: MockSignInUseCase(),
      signInWithAppleUseCase: MockSignInWithAppleUseCase(),
      signInWithGoogleUseCase: MockSignInWithGoogleUseCase(),
      signInWithKakaoUseCase: MockSignInWithKakaoUseCase(),
      signOutUseCase: MockSignOutUseCase(),
      signUpUseCase: MockSignUpUseCase(),
      updateTokenUseCase: MockUpdateTokenUseCase(),
    );
  });

  group('AuthProvider Test', () {
    group('Shared Preference Test', () {});
  });
}
