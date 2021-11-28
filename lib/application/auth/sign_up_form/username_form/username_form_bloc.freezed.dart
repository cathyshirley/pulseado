// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'username_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsernameFormEventTearOff {
  const _$UsernameFormEventTearOff();

  UsernameChanged usernameChanged(String usernameString) {
    return UsernameChanged(
      usernameString,
    );
  }

  SubmitForm submitForm() {
    return const SubmitForm();
  }
}

/// @nodoc
const $UsernameFormEvent = _$UsernameFormEventTearOff();

/// @nodoc
mixin _$UsernameFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function() submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameString)? usernameChanged,
    TResult Function()? submitForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(SubmitForm value) submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameFormEventCopyWith<$Res> {
  factory $UsernameFormEventCopyWith(
          UsernameFormEvent value, $Res Function(UsernameFormEvent) then) =
      _$UsernameFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameFormEventCopyWithImpl<$Res>
    implements $UsernameFormEventCopyWith<$Res> {
  _$UsernameFormEventCopyWithImpl(this._value, this._then);

  final UsernameFormEvent _value;
  // ignore: unused_field
  final $Res Function(UsernameFormEvent) _then;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameString});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$UsernameFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? usernameString = freezed,
  }) {
    return _then(UsernameChanged(
      usernameString == freezed
          ? _value.usernameString
          : usernameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameString);

  @override
  final String usernameString;

  @override
  String toString() {
    return 'UsernameFormEvent.usernameChanged(usernameString: $usernameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameString, usernameString) ||
                const DeepCollectionEquality()
                    .equals(other.usernameString, usernameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameString);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function() submitForm,
  }) {
    return usernameChanged(usernameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameString)? usernameChanged,
    TResult Function()? submitForm,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(SubmitForm value) submitForm,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements UsernameFormEvent {
  const factory UsernameChanged(String usernameString) = _$UsernameChanged;

  String get usernameString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFormCopyWith<$Res> {
  factory $SubmitFormCopyWith(
          SubmitForm value, $Res Function(SubmitForm) then) =
      _$SubmitFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitFormCopyWithImpl<$Res>
    extends _$UsernameFormEventCopyWithImpl<$Res>
    implements $SubmitFormCopyWith<$Res> {
  _$SubmitFormCopyWithImpl(SubmitForm _value, $Res Function(SubmitForm) _then)
      : super(_value, (v) => _then(v as SubmitForm));

  @override
  SubmitForm get _value => super._value as SubmitForm;
}

/// @nodoc
class _$SubmitForm implements SubmitForm {
  const _$SubmitForm();

  @override
  String toString() {
    return 'UsernameFormEvent.submitForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameString) usernameChanged,
    required TResult Function() submitForm,
  }) {
    return submitForm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameString)? usernameChanged,
    TResult Function()? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(SubmitForm value) submitForm,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(this);
    }
    return orElse();
  }
}

abstract class SubmitForm implements UsernameFormEvent {
  const factory SubmitForm() = _$SubmitForm;
}

/// @nodoc
class _$UsernameFormStateTearOff {
  const _$UsernameFormStateTearOff();

  _UsernameFormState call(
      {required Username username,
      required bool isSubmitting,
      required bool showErrorMessages,
      required bool usernameNotAvailable,
      required Option<Either<AuthFailure, bool>> newUserResponse}) {
    return _UsernameFormState(
      username: username,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      usernameNotAvailable: usernameNotAvailable,
      newUserResponse: newUserResponse,
    );
  }
}

/// @nodoc
const $UsernameFormState = _$UsernameFormStateTearOff();

/// @nodoc
mixin _$UsernameFormState {
  Username get username => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get usernameNotAvailable => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, bool>> get newUserResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameFormStateCopyWith<UsernameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameFormStateCopyWith<$Res> {
  factory $UsernameFormStateCopyWith(
          UsernameFormState value, $Res Function(UsernameFormState) then) =
      _$UsernameFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      bool isSubmitting,
      bool showErrorMessages,
      bool usernameNotAvailable,
      Option<Either<AuthFailure, bool>> newUserResponse});
}

/// @nodoc
class _$UsernameFormStateCopyWithImpl<$Res>
    implements $UsernameFormStateCopyWith<$Res> {
  _$UsernameFormStateCopyWithImpl(this._value, this._then);

  final UsernameFormState _value;
  // ignore: unused_field
  final $Res Function(UsernameFormState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? usernameNotAvailable = freezed,
    Object? newUserResponse = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      usernameNotAvailable: usernameNotAvailable == freezed
          ? _value.usernameNotAvailable
          : usernameNotAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      newUserResponse: newUserResponse == freezed
          ? _value.newUserResponse
          : newUserResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc
abstract class _$UsernameFormStateCopyWith<$Res>
    implements $UsernameFormStateCopyWith<$Res> {
  factory _$UsernameFormStateCopyWith(
          _UsernameFormState value, $Res Function(_UsernameFormState) then) =
      __$UsernameFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      bool isSubmitting,
      bool showErrorMessages,
      bool usernameNotAvailable,
      Option<Either<AuthFailure, bool>> newUserResponse});
}

/// @nodoc
class __$UsernameFormStateCopyWithImpl<$Res>
    extends _$UsernameFormStateCopyWithImpl<$Res>
    implements _$UsernameFormStateCopyWith<$Res> {
  __$UsernameFormStateCopyWithImpl(
      _UsernameFormState _value, $Res Function(_UsernameFormState) _then)
      : super(_value, (v) => _then(v as _UsernameFormState));

  @override
  _UsernameFormState get _value => super._value as _UsernameFormState;

  @override
  $Res call({
    Object? username = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? usernameNotAvailable = freezed,
    Object? newUserResponse = freezed,
  }) {
    return _then(_UsernameFormState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      usernameNotAvailable: usernameNotAvailable == freezed
          ? _value.usernameNotAvailable
          : usernameNotAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      newUserResponse: newUserResponse == freezed
          ? _value.newUserResponse
          : newUserResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc
class _$_UsernameFormState implements _UsernameFormState {
  const _$_UsernameFormState(
      {required this.username,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.usernameNotAvailable,
      required this.newUserResponse});

  @override
  final Username username;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool usernameNotAvailable;
  @override
  final Option<Either<AuthFailure, bool>> newUserResponse;

  @override
  String toString() {
    return 'UsernameFormState(username: $username, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, usernameNotAvailable: $usernameNotAvailable, newUserResponse: $newUserResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.usernameNotAvailable, usernameNotAvailable) ||
                const DeepCollectionEquality().equals(
                    other.usernameNotAvailable, usernameNotAvailable)) &&
            (identical(other.newUserResponse, newUserResponse) ||
                const DeepCollectionEquality()
                    .equals(other.newUserResponse, newUserResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(usernameNotAvailable) ^
      const DeepCollectionEquality().hash(newUserResponse);

  @JsonKey(ignore: true)
  @override
  _$UsernameFormStateCopyWith<_UsernameFormState> get copyWith =>
      __$UsernameFormStateCopyWithImpl<_UsernameFormState>(this, _$identity);
}

abstract class _UsernameFormState implements UsernameFormState {
  const factory _UsernameFormState(
          {required Username username,
          required bool isSubmitting,
          required bool showErrorMessages,
          required bool usernameNotAvailable,
          required Option<Either<AuthFailure, bool>> newUserResponse}) =
      _$_UsernameFormState;

  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get usernameNotAvailable => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, bool>> get newUserResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsernameFormStateCopyWith<_UsernameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
