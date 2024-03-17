// Mocks generated by Mockito 5.4.2 from annotations
// in kiwit/test/mocks/auth/auth_repository_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:kiwit/core/errors/failure.dart' as _i5;
import 'package:kiwit/features/auth/domain/entities/auth_entity.dart' as _i6;
import 'package:kiwit/features/auth/domain/repositories/auth_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> signUp() =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signUp,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signUp,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> signIn() =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signIn,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signIn,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> signOut() =>
      (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> deleteAccount(
          {required String? accessToken}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAccount,
          [],
          {#accessToken: accessToken},
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #deleteAccount,
            [],
            {#accessToken: accessToken},
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #deleteAccount,
            [],
            {#accessToken: accessToken},
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> signInWithGoogle() =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithGoogle,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithGoogle,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithGoogle,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> signInWithApple() =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithApple,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithApple,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithApple,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> signInWithKakao() =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithKakao,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithKakao,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #signInWithKakao,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>> updateToken() =>
      (super.noSuchMethod(
        Invocation.method(
          #updateToken,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #updateToken,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>.value(
                _FakeEither_0<_i5.Failure, _i6.AuthEntity>(
          this,
          Invocation.method(
            #updateToken,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.AuthEntity>>);
}
