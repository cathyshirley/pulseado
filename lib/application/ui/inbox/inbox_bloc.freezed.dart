// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxEventTearOff {
  const _$InboxEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $InboxEvent = _$InboxEventTearOff();

/// @nodoc
mixin _$InboxEvent {
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
abstract class $InboxEventCopyWith<$Res> {
  factory $InboxEventCopyWith(
          InboxEvent value, $Res Function(InboxEvent) then) =
      _$InboxEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxEventCopyWithImpl<$Res> implements $InboxEventCopyWith<$Res> {
  _$InboxEventCopyWithImpl(this._value, this._then);

  final InboxEvent _value;
  // ignore: unused_field
  final $Res Function(InboxEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res>
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
    return 'InboxEvent.started()';
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

abstract class _Started implements InboxEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$InboxStateTearOff {
  const _$InboxStateTearOff();

  _InboxState call(
      {required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required bool isFetchingData}) {
    return _InboxState(
      repositoryResponse: repositoryResponse,
      isFetchingData: isFetchingData,
    );
  }
}

/// @nodoc
const $InboxState = _$InboxStateTearOff();

/// @nodoc
mixin _$InboxState {
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  bool get isFetchingData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<RepositoryFailure, User>> repositoryResponse,
      bool isFetchingData});
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  final InboxState _value;
  // ignore: unused_field
  final $Res Function(InboxState) _then;

  @override
  $Res call({
    Object? repositoryResponse = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryResponse: repositoryResponse == freezed
          ? _value.repositoryResponse
          : repositoryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<RepositoryFailure, User>>,
      isFetchingData: isFetchingData == freezed
          ? _value.isFetchingData
          : isFetchingData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InboxStateCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$InboxStateCopyWith(
          _InboxState value, $Res Function(_InboxState) then) =
      __$InboxStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<RepositoryFailure, User>> repositoryResponse,
      bool isFetchingData});
}

/// @nodoc
class __$InboxStateCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res>
    implements _$InboxStateCopyWith<$Res> {
  __$InboxStateCopyWithImpl(
      _InboxState _value, $Res Function(_InboxState) _then)
      : super(_value, (v) => _then(v as _InboxState));

  @override
  _InboxState get _value => super._value as _InboxState;

  @override
  $Res call({
    Object? repositoryResponse = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_InboxState(
      repositoryResponse: repositoryResponse == freezed
          ? _value.repositoryResponse
          : repositoryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<RepositoryFailure, User>>,
      isFetchingData: isFetchingData == freezed
          ? _value.isFetchingData
          : isFetchingData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_InboxState implements _InboxState {
  const _$_InboxState(
      {required this.repositoryResponse, required this.isFetchingData});

  @override
  final Option<Either<RepositoryFailure, User>> repositoryResponse;
  @override
  final bool isFetchingData;

  @override
  String toString() {
    return 'InboxState(repositoryResponse: $repositoryResponse, isFetchingData: $isFetchingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxState &&
            (identical(other.repositoryResponse, repositoryResponse) ||
                const DeepCollectionEquality()
                    .equals(other.repositoryResponse, repositoryResponse)) &&
            (identical(other.isFetchingData, isFetchingData) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingData, isFetchingData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repositoryResponse) ^
      const DeepCollectionEquality().hash(isFetchingData);

  @JsonKey(ignore: true)
  @override
  _$InboxStateCopyWith<_InboxState> get copyWith =>
      __$InboxStateCopyWithImpl<_InboxState>(this, _$identity);
}

abstract class _InboxState implements InboxState {
  const factory _InboxState(
      {required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required bool isFetchingData}) = _$_InboxState;

  @override
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  @override
  bool get isFetchingData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InboxStateCopyWith<_InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}
