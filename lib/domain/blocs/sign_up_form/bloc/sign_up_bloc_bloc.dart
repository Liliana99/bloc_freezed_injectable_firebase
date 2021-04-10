import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_freezed_injectable/domain/auth/i_auth_facade.dart';
import 'package:flutter_bloc_freezed_injectable/domain/core/value_validators.dart';
import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc_event.dart';
part 'sign_up_bloc_state.dart';
part 'sign_up_bloc_bloc.freezed.dart';

@injectable
class SignUpBlocBloc extends Bloc<SignUpBlocEvent, SignUpBlocState> {
  final IAuthFacade _authFacade;
 
  // ignore: sort_constructors_first
  SignUpBlocBloc(this._authFacade) : super(SignUpBlocState.initial());

  @override
  Stream<SignUpBlocState> mapEventToState(
    SignUpBlocEvent event,
  ) async* {
    yield* event.map(
      emailChange: (event) async* {
        yield state.copyWith(
          emailAddress: event.email,
          authFailureOrSuccess: const AuthFailureOrSuccess.none(),
        );
      },
      passwordChange: (event) async* {
        yield state.copyWith(
          password: event.password,
          authFailureOrSuccess: const AuthFailureOrSuccess.none(),
        );
      },
      registerWithEmailAndPassword: (event) async* {
        final email = state.emailAddress;
        final password = state.password;

        if (validateEmailAddress(email) && validatePassword(password)) {
          yield state.copyWith(
            showErrorMessages: false,
            isSubmitting: true,
            authFailureOrSuccess: const AuthFailureOrSuccess.none(),
          );
          final result = await _authFacade.registerWithEmailAndPassword(
            emalAddress: email,
            password: password,
          );

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccess: result.authFailureOrSuccess,
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
            authFailureOrSuccess: const AuthFailureOrSuccess.none(),
          );
        }
      },
    );
  }
}
