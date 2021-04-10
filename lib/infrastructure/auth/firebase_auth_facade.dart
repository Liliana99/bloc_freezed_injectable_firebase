import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/firebase_auth_result.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

import 'auth_failure_or_success.dart';

@LazySingleton(as: IAuthFacade)
// ignore: public_member_api_docs
class FireBaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  // ignore: public_member_api_docs
  // ignore: sort_constructors_first
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
        authFailureOrSuccess: const AuthFailureOrSuccess.success(),
      );
    } catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.emailAlreadyInUse(),
        );
        
      } 
      if(e.code == 'invalid-email'){
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.invalidEmailAndPassword(),
        );
      }
      else {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.serverError(),
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
      // ignore: await_only_futures
      await _firebaseAuth
        // ignore: unawaited_futures
        ..signInWithEmailAndPassword(
          email: emalAddress,
          password: password,
        );
      return FireBaseAuthResult(
        isSuccess: true,
        authFailureOrSuccess: const AuthFailureOrSuccess.success(),
      );
    } catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_WRONG_PASSWORD') {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.invalidEmailAndPassword(),
        );
      } if(e.code == 'User_not_found' ){
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.userNotFound(),
        );
      }
      else {
        return FireBaseAuthResult(
          isSuccess: false,
          authFailureOrSuccess: const AuthFailureOrSuccess.serverError(),
        );
      }
    }
  }
}
