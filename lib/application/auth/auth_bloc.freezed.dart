// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

  UserSignedOut userSignedOut() {
    return const UserSignedOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserSignedOut value) userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserSignedOut value)? userSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc
class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() userSignedOut,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserSignedOut value) userSignedOut,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserSignedOut value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $UserSignedOutCopyWith<$Res> {
  factory $UserSignedOutCopyWith(
          UserSignedOut value, $Res Function(UserSignedOut) then) =
      _$UserSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UserSignedOutCopyWith<$Res> {
  _$UserSignedOutCopyWithImpl(
      UserSignedOut _value, $Res Function(UserSignedOut) _then)
      : super(_value, (v) => _then(v as UserSignedOut));

  @override
  UserSignedOut get _value => super._value as UserSignedOut;
}

/// @nodoc
class _$UserSignedOut implements UserSignedOut {
  const _$UserSignedOut();

  @override
  String toString() {
    return 'AuthEvent.userSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() userSignedOut,
  }) {
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserSignedOut value) userSignedOut,
  }) {
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserSignedOut value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class UserSignedOut implements AuthEvent {
  const factory UserSignedOut() = _$UserSignedOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  UserAuthenticated userAuthenticated({required UniqueId uniqueId}) {
    return UserAuthenticated(
      uniqueId: uniqueId,
    );
  }

  UserUnauthenticated userUnauthenticated() {
    return const UserUnauthenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId uniqueId) userAuthenticated,
    required TResult Function() userUnauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId uniqueId)? userAuthenticated,
    TResult Function()? userUnauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserUnauthenticated value) userUnauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserUnauthenticated value)? userUnauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId uniqueId) userAuthenticated,
    required TResult Function() userUnauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId uniqueId)? userAuthenticated,
    TResult Function()? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserUnauthenticated value) userUnauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserUnauthenticated value)? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UserAuthenticatedCopyWith<$Res> {
  factory $UserAuthenticatedCopyWith(
          UserAuthenticated value, $Res Function(UserAuthenticated) then) =
      _$UserAuthenticatedCopyWithImpl<$Res>;
  $Res call({UniqueId uniqueId});
}

/// @nodoc
class _$UserAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $UserAuthenticatedCopyWith<$Res> {
  _$UserAuthenticatedCopyWithImpl(
      UserAuthenticated _value, $Res Function(UserAuthenticated) _then)
      : super(_value, (v) => _then(v as UserAuthenticated));

  @override
  UserAuthenticated get _value => super._value as UserAuthenticated;

  @override
  $Res call({
    Object? uniqueId = freezed,
  }) {
    return _then(UserAuthenticated(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
class _$UserAuthenticated implements UserAuthenticated {
  const _$UserAuthenticated({required this.uniqueId});

  @override
  final UniqueId uniqueId;

  @override
  String toString() {
    return 'AuthState.userAuthenticated(uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticated &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uniqueId);

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      _$UserAuthenticatedCopyWithImpl<UserAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId uniqueId) userAuthenticated,
    required TResult Function() userUnauthenticated,
  }) {
    return userAuthenticated(uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId uniqueId)? userAuthenticated,
    TResult Function()? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserUnauthenticated value) userUnauthenticated,
  }) {
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserUnauthenticated value)? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticated implements AuthState {
  const factory UserAuthenticated({required UniqueId uniqueId}) =
      _$UserAuthenticated;

  UniqueId get uniqueId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUnauthenticatedCopyWith<$Res> {
  factory $UserUnauthenticatedCopyWith(
          UserUnauthenticated value, $Res Function(UserUnauthenticated) then) =
      _$UserUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $UserUnauthenticatedCopyWith<$Res> {
  _$UserUnauthenticatedCopyWithImpl(
      UserUnauthenticated _value, $Res Function(UserUnauthenticated) _then)
      : super(_value, (v) => _then(v as UserUnauthenticated));

  @override
  UserUnauthenticated get _value => super._value as UserUnauthenticated;
}

/// @nodoc
class _$UserUnauthenticated implements UserUnauthenticated {
  const _$UserUnauthenticated();

  @override
  String toString() {
    return 'AuthState.userUnauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId uniqueId) userAuthenticated,
    required TResult Function() userUnauthenticated,
  }) {
    return userUnauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId uniqueId)? userAuthenticated,
    TResult Function()? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (userUnauthenticated != null) {
      return userUnauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAuthenticated value) userAuthenticated,
    required TResult Function(UserUnauthenticated value) userUnauthenticated,
  }) {
    return userUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAuthenticated value)? userAuthenticated,
    TResult Function(UserUnauthenticated value)? userUnauthenticated,
    required TResult orElse(),
  }) {
    if (userUnauthenticated != null) {
      return userUnauthenticated(this);
    }
    return orElse();
  }
}

abstract class UserUnauthenticated implements AuthState {
  const factory UserUnauthenticated() = _$UserUnauthenticated;
}
