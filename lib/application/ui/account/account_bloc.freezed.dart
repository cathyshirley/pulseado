// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccountEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  _AccountState call(
      {required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required Option<String> imageURL,
      required bool isFetchingData}) {
    return _AccountState(
      repositoryResponse: repositoryResponse,
      imageURL: imageURL,
      isFetchingData: isFetchingData,
    );
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  Option<String> get imageURL => throw _privateConstructorUsedError;
  bool get isFetchingData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<RepositoryFailure, User>> repositoryResponse,
      Option<String> imageURL,
      bool isFetchingData});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object? repositoryResponse = freezed,
    Object? imageURL = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryResponse: repositoryResponse == freezed
          ? _value.repositoryResponse
          : repositoryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<RepositoryFailure, User>>,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isFetchingData: isFetchingData == freezed
          ? _value.isFetchingData
          : isFetchingData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AccountStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$AccountStateCopyWith(
          _AccountState value, $Res Function(_AccountState) then) =
      __$AccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<RepositoryFailure, User>> repositoryResponse,
      Option<String> imageURL,
      bool isFetchingData});
}

/// @nodoc
class __$AccountStateCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$AccountStateCopyWith<$Res> {
  __$AccountStateCopyWithImpl(
      _AccountState _value, $Res Function(_AccountState) _then)
      : super(_value, (v) => _then(v as _AccountState));

  @override
  _AccountState get _value => super._value as _AccountState;

  @override
  $Res call({
    Object? repositoryResponse = freezed,
    Object? imageURL = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_AccountState(
      repositoryResponse: repositoryResponse == freezed
          ? _value.repositoryResponse
          : repositoryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<RepositoryFailure, User>>,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isFetchingData: isFetchingData == freezed
          ? _value.isFetchingData
          : isFetchingData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_AccountState implements _AccountState {
  const _$_AccountState(
      {required this.repositoryResponse,
      required this.imageURL,
      required this.isFetchingData});

  @override
  final Option<Either<RepositoryFailure, User>> repositoryResponse;
  @override
  final Option<String> imageURL;
  @override
  final bool isFetchingData;

  @override
  String toString() {
    return 'AccountState(repositoryResponse: $repositoryResponse, imageURL: $imageURL, isFetchingData: $isFetchingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountState &&
            (identical(other.repositoryResponse, repositoryResponse) ||
                const DeepCollectionEquality()
                    .equals(other.repositoryResponse, repositoryResponse)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.isFetchingData, isFetchingData) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingData, isFetchingData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repositoryResponse) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(isFetchingData);

  @JsonKey(ignore: true)
  @override
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      __$AccountStateCopyWithImpl<_AccountState>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required Option<String> imageURL,
      required bool isFetchingData}) = _$_AccountState;

  @override
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  @override
  Option<String> get imageURL => throw _privateConstructorUsedError;
  @override
  bool get isFetchingData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
