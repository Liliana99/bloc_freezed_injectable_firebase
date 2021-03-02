// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  EmailChange emailChange(String email) {
    return EmailChange(
      email,
    );
  }

// ignore: unused_element
  PasswordChange passwordChange(String password) {
    return PasswordChange(
      password,
    );
  }

// ignore: unused_element
  SignInWithEmailandPassword signInWithEmailAndPassword() {
    return const SignInWithEmailandPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult signInWithEmailAndPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult signInWithEmailAndPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangeCopyWith<$Res> {
  factory $EmailChangeCopyWith(
          EmailChange value, $Res Function(EmailChange) then) =
      _$EmailChangeCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangeCopyWith<$Res> {
  _$EmailChangeCopyWithImpl(
      EmailChange _value, $Res Function(EmailChange) _then)
      : super(_value, (v) => _then(v as EmailChange));

  @override
  EmailChange get _value => super._value as EmailChange;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChange(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChange implements EmailChange {
  const _$EmailChange(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChange(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChange &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangeCopyWith<EmailChange> get copyWith =>
      _$EmailChangeCopyWithImpl<EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult signInWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return emailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult signInWithEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChange != null) {
      return emailChange(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChange != null) {
      return emailChange(this);
    }
    return orElse();
  }
}

abstract class EmailChange implements SignInFormEvent {
  const factory EmailChange(String email) = _$EmailChange;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangeCopyWith<EmailChange> get copyWith;
}

/// @nodoc
abstract class $PasswordChangeCopyWith<$Res> {
  factory $PasswordChangeCopyWith(
          PasswordChange value, $Res Function(PasswordChange) then) =
      _$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(
      PasswordChange _value, $Res Function(PasswordChange) _then)
      : super(_value, (v) => _then(v as PasswordChange));

  @override
  PasswordChange get _value => super._value as PasswordChange;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChange(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChange implements PasswordChange {
  const _$PasswordChange(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChange &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      _$PasswordChangeCopyWithImpl<PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult signInWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult signInWithEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class PasswordChange implements SignInFormEvent {
  const factory PasswordChange(String password) = _$PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangeCopyWith<PasswordChange> get copyWith;
}

/// @nodoc
abstract class $SignInWithEmailandPasswordCopyWith<$Res> {
  factory $SignInWithEmailandPasswordCopyWith(SignInWithEmailandPassword value,
          $Res Function(SignInWithEmailandPassword) then) =
      _$SignInWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailandPasswordCopyWith<$Res> {
  _$SignInWithEmailandPasswordCopyWithImpl(SignInWithEmailandPassword _value,
      $Res Function(SignInWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as SignInWithEmailandPassword));

  @override
  SignInWithEmailandPassword get _value =>
      super._value as SignInWithEmailandPassword;
}

/// @nodoc
class _$SignInWithEmailandPassword implements SignInWithEmailandPassword {
  const _$SignInWithEmailandPassword();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult signInWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult signInWithEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(signInWithEmailAndPassword != null);
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult signInWithEmailAndPassword(SignInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailandPassword implements SignInFormEvent {
  const factory SignInWithEmailandPassword() = _$SignInWithEmailandPassword;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required String emailAddress,
      @required String password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required AuthFailureOrSuccess authFailureOrSuccess}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get emailAddress;
  String get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  AuthFailureOrSuccess get authFailureOrSuccess;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      bool showErrorMessages,
      bool isSubmitting,
      AuthFailureOrSuccess authFailureOrSuccess});

  $AuthFailureOrSuccessCopyWith<$Res> get authFailureOrSuccess;
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as AuthFailureOrSuccess,
    ));
  }

  @override
  $AuthFailureOrSuccessCopyWith<$Res> get authFailureOrSuccess {
    if (_value.authFailureOrSuccess == null) {
      return null;
    }
    return $AuthFailureOrSuccessCopyWith<$Res>(_value.authFailureOrSuccess,
        (value) {
      return _then(_value.copyWith(authFailureOrSuccess: value));
    });
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String password,
      bool showErrorMessages,
      bool isSubmitting,
      AuthFailureOrSuccess authFailureOrSuccess});

  @override
  $AuthFailureOrSuccessCopyWith<$Res> get authFailureOrSuccess;
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as AuthFailureOrSuccess,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final AuthFailureOrSuccess authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required String emailAddress,
          @required String password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required AuthFailureOrSuccess authFailureOrSuccess}) =
      _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  AuthFailureOrSuccess get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
