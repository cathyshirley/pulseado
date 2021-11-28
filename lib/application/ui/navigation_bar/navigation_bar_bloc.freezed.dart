// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationBarEventTearOff {
  const _$NavigationBarEventTearOff();

  _PageChanged pageChanged({required int pageNo}) {
    return _PageChanged(
      pageNo: pageNo,
    );
  }
}

/// @nodoc
const $NavigationBarEvent = _$NavigationBarEventTearOff();

/// @nodoc
mixin _$NavigationBarEvent {
  int get pageNo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationBarEventCopyWith<NavigationBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarEventCopyWith<$Res> {
  factory $NavigationBarEventCopyWith(
          NavigationBarEvent value, $Res Function(NavigationBarEvent) then) =
      _$NavigationBarEventCopyWithImpl<$Res>;
  $Res call({int pageNo});
}

/// @nodoc
class _$NavigationBarEventCopyWithImpl<$Res>
    implements $NavigationBarEventCopyWith<$Res> {
  _$NavigationBarEventCopyWithImpl(this._value, this._then);

  final NavigationBarEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationBarEvent) _then;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(_value.copyWith(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PageChangedCopyWith<$Res>
    implements $NavigationBarEventCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) then) =
      __$PageChangedCopyWithImpl<$Res>;
  @override
  $Res call({int pageNo});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    extends _$NavigationBarEventCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(
      _PageChanged _value, $Res Function(_PageChanged) _then)
      : super(_value, (v) => _then(v as _PageChanged));

  @override
  _PageChanged get _value => super._value as _PageChanged;

  @override
  $Res call({
    Object? pageNo = freezed,
  }) {
    return _then(_PageChanged(
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_PageChanged implements _PageChanged {
  const _$_PageChanged({required this.pageNo});

  @override
  final int pageNo;

  @override
  String toString() {
    return 'NavigationBarEvent.pageChanged(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageChanged &&
            (identical(other.pageNo, pageNo) ||
                const DeepCollectionEquality().equals(other.pageNo, pageNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageNo);

  @JsonKey(ignore: true)
  @override
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) pageChanged,
  }) {
    return pageChanged(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_PageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements NavigationBarEvent {
  const factory _PageChanged({required int pageNo}) = _$_PageChanged;

  @override
  int get pageNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavigationBarStateTearOff {
  const _$NavigationBarStateTearOff();

  _NavigationBarState call(
      {required int currentPage, required PageController pageController}) {
    return _NavigationBarState(
      currentPage: currentPage,
      pageController: pageController,
    );
  }
}

/// @nodoc
const $NavigationBarState = _$NavigationBarStateTearOff();

/// @nodoc
mixin _$NavigationBarState {
  int get currentPage => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationBarStateCopyWith<NavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarStateCopyWith<$Res> {
  factory $NavigationBarStateCopyWith(
          NavigationBarState value, $Res Function(NavigationBarState) then) =
      _$NavigationBarStateCopyWithImpl<$Res>;
  $Res call({int currentPage, PageController pageController});
}

/// @nodoc
class _$NavigationBarStateCopyWithImpl<$Res>
    implements $NavigationBarStateCopyWith<$Res> {
  _$NavigationBarStateCopyWithImpl(this._value, this._then);

  final NavigationBarState _value;
  // ignore: unused_field
  final $Res Function(NavigationBarState) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
abstract class _$NavigationBarStateCopyWith<$Res>
    implements $NavigationBarStateCopyWith<$Res> {
  factory _$NavigationBarStateCopyWith(
          _NavigationBarState value, $Res Function(_NavigationBarState) then) =
      __$NavigationBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPage, PageController pageController});
}

/// @nodoc
class __$NavigationBarStateCopyWithImpl<$Res>
    extends _$NavigationBarStateCopyWithImpl<$Res>
    implements _$NavigationBarStateCopyWith<$Res> {
  __$NavigationBarStateCopyWithImpl(
      _NavigationBarState _value, $Res Function(_NavigationBarState) _then)
      : super(_value, (v) => _then(v as _NavigationBarState));

  @override
  _NavigationBarState get _value => super._value as _NavigationBarState;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_NavigationBarState(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
class _$_NavigationBarState implements _NavigationBarState {
  const _$_NavigationBarState(
      {required this.currentPage, required this.pageController});

  @override
  final int currentPage;
  @override
  final PageController pageController;

  @override
  String toString() {
    return 'NavigationBarState(currentPage: $currentPage, pageController: $pageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationBarState &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.pageController, pageController) ||
                const DeepCollectionEquality()
                    .equals(other.pageController, pageController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(pageController);

  @JsonKey(ignore: true)
  @override
  _$NavigationBarStateCopyWith<_NavigationBarState> get copyWith =>
      __$NavigationBarStateCopyWithImpl<_NavigationBarState>(this, _$identity);
}

abstract class _NavigationBarState implements NavigationBarState {
  const factory _NavigationBarState(
      {required int currentPage,
      required PageController pageController}) = _$_NavigationBarState;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  PageController get pageController => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavigationBarStateCopyWith<_NavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
