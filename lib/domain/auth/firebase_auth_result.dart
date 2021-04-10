import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';


class FireBaseAuthResult {
  final bool isSuccess;
  final AuthFailureOrSuccess authFailureOrSuccess;
  // ignore: sort_constructors_first
  FireBaseAuthResult({
    this.isSuccess,
    this.authFailureOrSuccess,
  });
}
