// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomePageEventTearOff {
  const _$HomePageEventTearOff();

  _Started started() {
    return const _Started();
  }

  PageChanged pageChanged({required int pageNo}) {
    return PageChanged(
      pageNo: pageNo,
    );
  }
}

/// @nodoc
const $HomePageEvent = _$HomePageEventTearOff();

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageNo) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageNo)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
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
    return 'HomePageEvent.started()';
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
    required TResult Function(int pageNo) pageChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageNo)? pageChanged,
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
    required TResult Function(PageChanged value) pageChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomePageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $PageChangedCopyWith<$Res> {
  factory $PageChangedCopyWith(
          PageChanged value, $Res Function(PageChanged) then) =
      _$PageChangedCopyWithImpl<$Res>;
  $Res call({int pageNo});
}

/// @nodoc
class _$PageChangedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(
      PageChanged _value, $Res Function(PageChanged) _then)
      : super(_value, (v) => _then(v as PageChanged));

  @override
  PageChanged get _value => super._value as PageChanged;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(PageChanged(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$PageChanged implements PageChanged {
  const _$PageChanged({required this.pageNo});

  @override
  final int pageNo;

  @override
  String toString() {
    return 'HomePageEvent.pageChanged(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageChanged &&
            (identical(other.pageNo, pageNo) ||
                const DeepCollectionEquality().equals(other.pageNo, pageNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageNo);

  @JsonKey(ignore: true)
  @override
  $PageChangedCopyWith<PageChanged> get copyWith =>
      _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageNo) pageChanged,
  }) {
    return pageChanged(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageNo)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(pageNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class PageChanged implements HomePageEvent {
  const factory PageChanged({required int pageNo}) = _$PageChanged;

  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageChangedCopyWith<PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

  _HomePageState call(
      {required int currentPage,
      required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required bool isFetchingData}) {
    return _HomePageState(
      currentPage: currentPage,
      repositoryResponse: repositoryResponse,
      isFetchingData: isFetchingData,
    );
  }
}

/// @nodoc
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  int get currentPage => throw _privateConstructorUsedError;
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  bool get isFetchingData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {int currentPage,
      Option<Either<RepositoryFailure, User>> repositoryResponse,
      bool isFetchingData});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? repositoryResponse = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(
          _HomePageState value, $Res Function(_HomePageState) then) =
      __$HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentPage,
      Option<Either<RepositoryFailure, User>> repositoryResponse,
      bool isFetchingData});
}

/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(
      _HomePageState _value, $Res Function(_HomePageState) _then)
      : super(_value, (v) => _then(v as _HomePageState));

  @override
  _HomePageState get _value => super._value as _HomePageState;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? repositoryResponse = freezed,
    Object? isFetchingData = freezed,
  }) {
    return _then(_HomePageState(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_HomePageState implements _HomePageState {
  const _$_HomePageState(
      {required this.currentPage,
      required this.repositoryResponse,
      required this.isFetchingData});

  @override
  final int currentPage;
  @override
  final Option<Either<RepositoryFailure, User>> repositoryResponse;
  @override
  final bool isFetchingData;

  @override
  String toString() {
    return 'HomePageState(currentPage: $currentPage, repositoryResponse: $repositoryResponse, isFetchingData: $isFetchingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePageState &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
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
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(repositoryResponse) ^
      const DeepCollectionEquality().hash(isFetchingData);

  @JsonKey(ignore: true)
  @override
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {required int currentPage,
      required Option<Either<RepositoryFailure, User>> repositoryResponse,
      required bool isFetchingData}) = _$_HomePageState;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  Option<Either<RepositoryFailure, User>> get repositoryResponse =>
      throw _privateConstructorUsedError;
  @override
  bool get isFetchingData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
