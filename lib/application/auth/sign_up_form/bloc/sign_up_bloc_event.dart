part of 'sign_up_bloc_bloc.dart';

@freezed
abstract class SignUpBlocEvent with _$SignUpBlocEvent {
  const factory SignUpBlocEvent.emailChange(String email) = EmailChange;
  const factory SignUpBlocEvent.passwordChange(String password) =
      PasswordChange;
  const factory SignUpBlocEvent.registerWithEmailAndPassword() =
      RegisterInWithEmailandPassword;
}
