import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/firebase_auth_result.dart';

abstract class IAuthFacade {
  Future<FireBaseAuthResult> registerWithEmailAndPassword({
    @required String emalAddress,
    @required String password,
  });
  Future<FireBaseAuthResult> sigInWithEmailAndPassword({
    @required String emalAddress,
    @required String password,
  });
}
