import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:flutter_bloc_freezed_injectable/domain/auth/i_auth_facade.dart';
import 'package:flutter_bloc_freezed_injectable/domain/core/value_validators.dart';
import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  // ignore: sort_constructors_first
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
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
      signInWithEmailAndPassword: (event) async* {
        final email = state.emailAddress;
        final password = state.password;
        if (validateEmailAddress(email) && validatePassword(password)) {
          yield state.copyWith(
            showErrorMessages: true,
            isSubmitting: true,
            authFailureOrSuccess: const AuthFailureOrSuccess.none(),
          );
          final result = await _authFacade.sigInWithEmailAndPassword(
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
