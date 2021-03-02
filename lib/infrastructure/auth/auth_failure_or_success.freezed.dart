// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure_or_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureOrSuccessTearOff {
  const _$AuthFailureOrSuccessTearOff();

// ignore: unused_element
  None none() {
    return const None();
  }

// ignore: unused_element
  Success success() {
    return const Success();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPassword invalidEmailAndPassword() {
    return const InvalidEmailAndPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailureOrSuccess = _$AuthFailureOrSuccessTearOff();

/// @nodoc
mixin _$AuthFailureOrSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureOrSuccessCopyWith<$Res> {
  factory $AuthFailureOrSuccessCopyWith(AuthFailureOrSuccess value,
          $Res Function(AuthFailureOrSuccess) then) =
      _$AuthFailureOrSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $AuthFailureOrSuccessCopyWith<$Res> {
  _$AuthFailureOrSuccessCopyWithImpl(this._value, this._then);

  final AuthFailureOrSuccess _value;
  // ignore: unused_field
  final $Res Function(AuthFailureOrSuccess) _then;
}

/// @nodoc
abstract class $NoneCopyWith<$Res> {
  factory $NoneCopyWith(None value, $Res Function(None) then) =
      _$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoneCopyWithImpl<$Res> extends _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $NoneCopyWith<$Res> {
  _$NoneCopyWithImpl(None _value, $Res Function(None) _then)
      : super(_value, (v) => _then(v as None));

  @override
  None get _value => super._value as None;
}

/// @nodoc
class _$None implements None {
  const _$None();

  @override
  String toString() {
    return 'AuthFailureOrSuccess.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements AuthFailureOrSuccess {
  const factory None() = _$None;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc
class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'AuthFailureOrSuccess.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AuthFailureOrSuccess {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailureOrSuccess.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailureOrSuccess {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailureOrSuccess.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailureOrSuccess {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCopyWith(InvalidEmailAndPassword value,
          $Res Function(InvalidEmailAndPassword) then) =
      _$InvalidEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFailureOrSuccessCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCopyWith<$Res> {
  _$InvalidEmailAndPasswordCopyWithImpl(InvalidEmailAndPassword _value,
      $Res Function(InvalidEmailAndPassword) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPassword));

  @override
  InvalidEmailAndPassword get _value => super._value as InvalidEmailAndPassword;
}

/// @nodoc
class _$InvalidEmailAndPassword implements InvalidEmailAndPassword {
  const _$InvalidEmailAndPassword();

  @override
  String toString() {
    return 'AuthFailureOrSuccess.invalidEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required TResult success(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult success(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(None value),
    @required TResult success(Success value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(none != null);
    assert(success != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(None value),
    TResult success(Success value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPassword implements AuthFailureOrSuccess {
  const factory InvalidEmailAndPassword() = _$InvalidEmailAndPassword;
}
