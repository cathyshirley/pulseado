// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyExist emailAlreadyExist() {
    return const EmailAlreadyExist();
  }

  UsernameAlreadyExist usernameAlreadyExist() {
    return const UsernameAlreadyExist();
  }

  InvalidCredentials invalidCredentials() {
    return const InvalidCredentials();
  }

  UnknownErrorOccured unknownErrorOccurred() {
    return const UnknownErrorOccured();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyExistCopyWith<$Res> {
  factory $EmailAlreadyExistCopyWith(
          EmailAlreadyExist value, $Res Function(EmailAlreadyExist) then) =
      _$EmailAlreadyExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyExistCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyExistCopyWith<$Res> {
  _$EmailAlreadyExistCopyWithImpl(
      EmailAlreadyExist _value, $Res Function(EmailAlreadyExist) _then)
      : super(_value, (v) => _then(v as EmailAlreadyExist));

  @override
  EmailAlreadyExist get _value => super._value as EmailAlreadyExist;
}

/// @nodoc
class _$EmailAlreadyExist implements EmailAlreadyExist {
  const _$EmailAlreadyExist();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) {
    return emailAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (emailAlreadyExist != null) {
      return emailAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) {
    return emailAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (emailAlreadyExist != null) {
      return emailAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyExist implements AuthFailure {
  const factory EmailAlreadyExist() = _$EmailAlreadyExist;
}

/// @nodoc
abstract class $UsernameAlreadyExistCopyWith<$Res> {
  factory $UsernameAlreadyExistCopyWith(UsernameAlreadyExist value,
          $Res Function(UsernameAlreadyExist) then) =
      _$UsernameAlreadyExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameAlreadyExistCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UsernameAlreadyExistCopyWith<$Res> {
  _$UsernameAlreadyExistCopyWithImpl(
      UsernameAlreadyExist _value, $Res Function(UsernameAlreadyExist) _then)
      : super(_value, (v) => _then(v as UsernameAlreadyExist));

  @override
  UsernameAlreadyExist get _value => super._value as UsernameAlreadyExist;
}

/// @nodoc
class _$UsernameAlreadyExist implements UsernameAlreadyExist {
  const _$UsernameAlreadyExist();

  @override
  String toString() {
    return 'AuthFailure.usernameAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) {
    return usernameAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (usernameAlreadyExist != null) {
      return usernameAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) {
    return usernameAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (usernameAlreadyExist != null) {
      return usernameAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyExist implements AuthFailure {
  const factory UsernameAlreadyExist() = _$UsernameAlreadyExist;
}

/// @nodoc
abstract class $InvalidCredentialsCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials value, $Res Function(InvalidCredentials) then) =
      _$InvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(
      InvalidCredentials _value, $Res Function(InvalidCredentials) _then)
      : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;
}

/// @nodoc
class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}

/// @nodoc
abstract class $UnknownErrorOccuredCopyWith<$Res> {
  factory $UnknownErrorOccuredCopyWith(
          UnknownErrorOccured value, $Res Function(UnknownErrorOccured) then) =
      _$UnknownErrorOccuredCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownErrorOccuredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnknownErrorOccuredCopyWith<$Res> {
  _$UnknownErrorOccuredCopyWithImpl(
      UnknownErrorOccured _value, $Res Function(UnknownErrorOccured) _then)
      : super(_value, (v) => _then(v as UnknownErrorOccured));

  @override
  UnknownErrorOccured get _value => super._value as UnknownErrorOccured;
}

/// @nodoc
class _$UnknownErrorOccured implements UnknownErrorOccured {
  const _$UnknownErrorOccured();

  @override
  String toString() {
    return 'AuthFailure.unknownErrorOccurred()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownErrorOccured);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() usernameAlreadyExist,
    required TResult Function() invalidCredentials,
    required TResult Function() unknownErrorOccurred,
  }) {
    return unknownErrorOccurred();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? usernameAlreadyExist,
    TResult Function()? invalidCredentials,
    TResult Function()? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (unknownErrorOccurred != null) {
      return unknownErrorOccurred();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyExist value) emailAlreadyExist,
    required TResult Function(UsernameAlreadyExist value) usernameAlreadyExist,
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(UnknownErrorOccured value) unknownErrorOccurred,
  }) {
    return unknownErrorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyExist value)? emailAlreadyExist,
    TResult Function(UsernameAlreadyExist value)? usernameAlreadyExist,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(UnknownErrorOccured value)? unknownErrorOccurred,
    required TResult orElse(),
  }) {
    if (unknownErrorOccurred != null) {
      return unknownErrorOccurred(this);
    }
    return orElse();
  }
}

abstract class UnknownErrorOccured implements AuthFailure {
  const factory UnknownErrorOccured() = _$UnknownErrorOccured;
}
