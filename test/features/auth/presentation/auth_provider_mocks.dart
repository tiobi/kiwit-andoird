import 'package:kiwit/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_with_apple_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_in_with_kakao_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:kiwit/features/auth/domain/usecases/update_token_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockDeleteAccountUseCase extends Mock implements DeleteAccountUseCase {}

class MockSignInUseCase extends Mock implements SignInUseCase {}

class MockSignInWithAppleUseCase extends Mock
    implements SignInWithAppleUseCase {}

class MockSignInWithGoogleUseCase extends Mock
    implements SignInWithGoogleUseCase {}

class MockSignInWithKakaoUseCase extends Mock
    implements SignInWithKakaoUseCase {}

class MockSignOutUseCase extends Mock implements SignOutUseCase {}

class MockSignUpUseCase extends Mock implements SignUpUseCase {}

class MockUpdateTokenUseCase extends Mock implements UpdateTokenUseCase {}
