// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpBlocEventTearOff {
  const _$SignUpBlocEventTearOff();

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
  RegisterInWithEmailandPassword registerWithEmailAndPassword() {
    return const RegisterInWithEmailandPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpBlocEvent = _$SignUpBlocEventTearOff();

/// @nodoc
mixin _$SignUpBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult registerWithEmailAndPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult registerWithEmailAndPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult registerWithEmailAndPassword(
            RegisterInWithEmailandPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult registerWithEmailAndPassword(RegisterInWithEmailandPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpBlocEventCopyWith<$Res> {
  factory $SignUpBlocEventCopyWith(
          SignUpBlocEvent value, $Res Function(SignUpBlocEvent) then) =
      _$SignUpBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpBlocEventCopyWithImpl<$Res>
    implements $SignUpBlocEventCopyWith<$Res> {
  _$SignUpBlocEventCopyWithImpl(this._value, this._then);

  final SignUpBlocEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpBlocEvent) _then;
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
    extends _$SignUpBlocEventCopyWithImpl<$Res>
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
    return 'SignUpBlocEvent.emailChange(email: $email)';
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
    @required TResult registerWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return emailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult registerWithEmailAndPassword(),
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
        TResult registerWithEmailAndPassword(
            RegisterInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult registerWithEmailAndPassword(RegisterInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChange != null) {
      return emailChange(this);
    }
    return orElse();
  }
}

abstract class EmailChange implements SignUpBlocEvent {
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
    extends _$SignUpBlocEventCopyWithImpl<$Res>
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
    return 'SignUpBlocEvent.passwordChange(password: $password)';
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
    @required TResult registerWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult registerWithEmailAndPassword(),
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
        TResult registerWithEmailAndPassword(
            RegisterInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult registerWithEmailAndPassword(RegisterInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class PasswordChange implements SignUpBlocEvent {
  const factory PasswordChange(String password) = _$PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangeCopyWith<PasswordChange> get copyWith;
}

/// @nodoc
abstract class $RegisterInWithEmailandPasswordCopyWith<$Res> {
  factory $RegisterInWithEmailandPasswordCopyWith(
          RegisterInWithEmailandPassword value,
          $Res Function(RegisterInWithEmailandPassword) then) =
      _$RegisterInWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterInWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignUpBlocEventCopyWithImpl<$Res>
    implements $RegisterInWithEmailandPasswordCopyWith<$Res> {
  _$RegisterInWithEmailandPasswordCopyWithImpl(
      RegisterInWithEmailandPassword _value,
      $Res Function(RegisterInWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as RegisterInWithEmailandPassword));

  @override
  RegisterInWithEmailandPassword get _value =>
      super._value as RegisterInWithEmailandPassword;
}

/// @nodoc
class _$RegisterInWithEmailandPassword
    implements RegisterInWithEmailandPassword {
  const _$RegisterInWithEmailandPassword();

  @override
  String toString() {
    return 'SignUpBlocEvent.registerWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterInWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChange(String email),
    @required TResult passwordChange(String password),
    @required TResult registerWithEmailAndPassword(),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return registerWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChange(String email),
    TResult passwordChange(String password),
    TResult registerWithEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChange(EmailChange value),
    @required TResult passwordChange(PasswordChange value),
    @required
        TResult registerWithEmailAndPassword(
            RegisterInWithEmailandPassword value),
  }) {
    assert(emailChange != null);
    assert(passwordChange != null);
    assert(registerWithEmailAndPassword != null);
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChange(EmailChange value),
    TResult passwordChange(PasswordChange value),
    TResult registerWithEmailAndPassword(RegisterInWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterInWithEmailandPassword implements SignUpBlocEvent {
  const factory RegisterInWithEmailandPassword() =
      _$RegisterInWithEmailandPassword;
}

/// @nodoc
class _$SignUpBlocStateTearOff {
  const _$SignUpBlocStateTearOff();

// ignore: unused_element
  _SignUpBlocState call(
      {@required String emailAddress,
      @required String password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required AuthFailureOrSuccess authFailureOrSuccess}) {
    return _SignUpBlocState(
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
const $SignUpBlocState = _$SignUpBlocStateTearOff();

/// @nodoc
mixin _$SignUpBlocState {
  String get emailAddress;
  String get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  AuthFailureOrSuccess get authFailureOrSuccess;

  @JsonKey(ignore: true)
  $SignUpBlocStateCopyWith<SignUpBlocState> get copyWith;
}

/// @nodoc
abstract class $SignUpBlocStateCopyWith<$Res> {
  factory $SignUpBlocStateCopyWith(
          SignUpBlocState value, $Res Function(SignUpBlocState) then) =
      _$SignUpBlocStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      bool showErrorMessages,
      bool isSubmitting,
      AuthFailureOrSuccess authFailureOrSuccess});

  $AuthFailureOrSuccessCopyWith<$Res> get authFailureOrSuccess;
}

/// @nodoc
class _$SignUpBlocStateCopyWithImpl<$Res>
    implements $SignUpBlocStateCopyWith<$Res> {
  _$SignUpBlocStateCopyWithImpl(this._value, this._then);

  final SignUpBlocState _value;
  // ignore: unused_field
  final $Res Function(SignUpBlocState) _then;

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
abstract class _$SignUpBlocStateCopyWith<$Res>
    implements $SignUpBlocStateCopyWith<$Res> {
  factory _$SignUpBlocStateCopyWith(
          _SignUpBlocState value, $Res Function(_SignUpBlocState) then) =
      __$SignUpBlocStateCopyWithImpl<$Res>;
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
class __$SignUpBlocStateCopyWithImpl<$Res>
    extends _$SignUpBlocStateCopyWithImpl<$Res>
    implements _$SignUpBlocStateCopyWith<$Res> {
  __$SignUpBlocStateCopyWithImpl(
      _SignUpBlocState _value, $Res Function(_SignUpBlocState) _then)
      : super(_value, (v) => _then(v as _SignUpBlocState));

  @override
  _SignUpBlocState get _value => super._value as _SignUpBlocState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignUpBlocState(
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
class _$_SignUpBlocState implements _SignUpBlocState {
  const _$_SignUpBlocState(
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
    return 'SignUpBlocState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpBlocState &&
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
  _$SignUpBlocStateCopyWith<_SignUpBlocState> get copyWith =>
      __$SignUpBlocStateCopyWithImpl<_SignUpBlocState>(this, _$identity);
}

abstract class _SignUpBlocState implements SignUpBlocState {
  const factory _SignUpBlocState(
          {@required String emailAddress,
          @required String password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required AuthFailureOrSuccess authFailureOrSuccess}) =
      _$_SignUpBlocState;

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
  _$SignUpBlocStateCopyWith<_SignUpBlocState> get copyWith;
}
