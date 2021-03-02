import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/firebase_auth_result.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

import 'auth_failure_or_success.dart';

@LazySingleton(as: IAuthFacade)
class FireBaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FireBaseAuthFacade(this._firebaseAuth);

  @override
  Future<FireBaseAuthResult> registerWithEmailAndPassword({
    String emalAddress,
    String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emalAddress,
        password: password,
      );
      return FireBaseAuthResult(
        isSuccess: true,
        authFailureOrSuccess: AuthFailureOrSuccess.success(),
      );
    } catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: AuthFailureOrSuccess.emailAlreadyInUse(),
        );
      } else {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: AuthFailureOrSuccess.serverError(),
        );
      }
    }
  }

  @override
  Future<FireBaseAuthResult> sigInWithEmailAndPassword({
    String emalAddress,
    String password,
  }) async {
    try {
      await _firebaseAuth
        ..signInWithEmailAndPassword(
          email: emalAddress,
          password: password,
        );
      return FireBaseAuthResult(
        isSuccess: true,
        authFailureOrSuccess: AuthFailureOrSuccess.success(),
      );
    } catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_WRONG_PASSWORD') {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: AuthFailureOrSuccess.invalidEmailAndPassword(),
        );
      } else {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: AuthFailureOrSuccess.serverError(),
        );
      }
    }
  }
}
