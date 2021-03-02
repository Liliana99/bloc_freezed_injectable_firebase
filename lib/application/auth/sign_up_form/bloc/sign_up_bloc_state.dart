part of 'sign_up_bloc_bloc.dart';

@freezed
abstract class SignUpBlocState with _$SignUpBlocState {
  const factory SignUpBlocState({
    @required String emailAddress,
    @required String password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required AuthFailureOrSuccess authFailureOrSuccess,
  }) = _SignUpBlocState;

  factory SignUpBlocState.initial() => SignUpBlocState(
        emailAddress: '',
        password: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: AuthFailureOrSuccess.none(),
      );
}
