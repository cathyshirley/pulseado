// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordFormEventTearOff {
  const _$PasswordFormEventTearOff();

  PasswordChanged passwordChanged({required String passwordString}) {
    return PasswordChanged(
      passwordString: passwordString,
    );
  }

  FormSubmitted formSubmitted({required FormDTO formDTO}) {
    return FormSubmitted(
      formDTO: formDTO,
    );
  }
}

/// @nodoc
const $PasswordFormEvent = _$PasswordFormEventTearOff();

/// @nodoc
mixin _$PasswordFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(FormDTO formDTO) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(FormDTO formDTO)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFormEventCopyWith<$Res> {
  factory $PasswordFormEventCopyWith(
          PasswordFormEvent value, $Res Function(PasswordFormEvent) then) =
      _$PasswordFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordFormEventCopyWithImpl<$Res>
    implements $PasswordFormEventCopyWith<$Res> {
  _$PasswordFormEventCopyWithImpl(this._value, this._then);

  final PasswordFormEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordFormEvent) _then;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$PasswordFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(PasswordChanged(
      passwordString: passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.passwordString});

  @override
  final String passwordString;

  @override
  String toString() {
    return 'PasswordFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordString, passwordString) ||
                const DeepCollectionEquality()
                    .equals(other.passwordString, passwordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordString);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(FormDTO formDTO) formSubmitted,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(FormDTO formDTO)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements PasswordFormEvent {
  const factory PasswordChanged({required String passwordString}) =
      _$PasswordChanged;

  String get passwordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSubmittedCopyWith<$Res> {
  factory $FormSubmittedCopyWith(
          FormSubmitted value, $Res Function(FormSubmitted) then) =
      _$FormSubmittedCopyWithImpl<$Res>;
  $Res call({FormDTO formDTO});
}

/// @nodoc
class _$FormSubmittedCopyWithImpl<$Res>
    extends _$PasswordFormEventCopyWithImpl<$Res>
    implements $FormSubmittedCopyWith<$Res> {
  _$FormSubmittedCopyWithImpl(
      FormSubmitted _value, $Res Function(FormSubmitted) _then)
      : super(_value, (v) => _then(v as FormSubmitted));

  @override
  FormSubmitted get _value => super._value as FormSubmitted;

  @override
  $Res call({
    Object? formDTO = freezed,
  }) {
    return _then(FormSubmitted(
      formDTO: formDTO == freezed
          ? _value.formDTO
          : formDTO // ignore: cast_nullable_to_non_nullable
              as FormDTO,
    ));
  }
}

/// @nodoc
class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted({required this.formDTO});

  @override
  final FormDTO formDTO;

  @override
  String toString() {
    return 'PasswordFormEvent.formSubmitted(formDTO: $formDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FormSubmitted &&
            (identical(other.formDTO, formDTO) ||
                const DeepCollectionEquality().equals(other.formDTO, formDTO)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(formDTO);

  @JsonKey(ignore: true)
  @override
  $FormSubmittedCopyWith<FormSubmitted> get copyWith =>
      _$FormSubmittedCopyWithImpl<FormSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(FormDTO formDTO) formSubmitted,
  }) {
    return formSubmitted(formDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(FormDTO formDTO)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(formDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements PasswordFormEvent {
  const factory FormSubmitted({required FormDTO formDTO}) = _$FormSubmitted;

  FormDTO get formDTO => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSubmittedCopyWith<FormSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasswordFormStateTearOff {
  const _$PasswordFormStateTearOff();

  _PasswordFormState call(
      {required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authResponse}) {
    return _PasswordFormState(
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authResponse: authResponse,
    );
  }
}

/// @nodoc
const $PasswordFormState = _$PasswordFormStateTearOff();

/// @nodoc
mixin _$PasswordFormState {
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordFormStateCopyWith<PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFormStateCopyWith<$Res> {
  factory $PasswordFormStateCopyWith(
          PasswordFormState value, $Res Function(PasswordFormState) then) =
      _$PasswordFormStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authResponse});
}

/// @nodoc
class _$PasswordFormStateCopyWithImpl<$Res>
    implements $PasswordFormStateCopyWith<$Res> {
  _$PasswordFormStateCopyWithImpl(this._value, this._then);

  final PasswordFormState _value;
  // ignore: unused_field
  final $Res Function(PasswordFormState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authResponse: authResponse == freezed
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PasswordFormStateCopyWith<$Res>
    implements $PasswordFormStateCopyWith<$Res> {
  factory _$PasswordFormStateCopyWith(
          _PasswordFormState value, $Res Function(_PasswordFormState) then) =
      __$PasswordFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authResponse});
}

/// @nodoc
class __$PasswordFormStateCopyWithImpl<$Res>
    extends _$PasswordFormStateCopyWithImpl<$Res>
    implements _$PasswordFormStateCopyWith<$Res> {
  __$PasswordFormStateCopyWithImpl(
      _PasswordFormState _value, $Res Function(_PasswordFormState) _then)
      : super(_value, (v) => _then(v as _PasswordFormState));

  @override
  _PasswordFormState get _value => super._value as _PasswordFormState;

  @override
  $Res call({
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_PasswordFormState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authResponse: authResponse == freezed
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PasswordFormState implements _PasswordFormState {
  const _$_PasswordFormState(
      {required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authResponse});

  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authResponse;

  @override
  String toString() {
    return 'PasswordFormState(password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authResponse: $authResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordFormState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authResponse, authResponse) ||
                const DeepCollectionEquality()
                    .equals(other.authResponse, authResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authResponse);

  @JsonKey(ignore: true)
  @override
  _$PasswordFormStateCopyWith<_PasswordFormState> get copyWith =>
      __$PasswordFormStateCopyWithImpl<_PasswordFormState>(this, _$identity);
}

abstract class _PasswordFormState implements PasswordFormState {
  const factory _PasswordFormState(
          {required Password password,
          required bool isSubmitting,
          required bool showErrorMessages,
          required Option<Either<AuthFailure, Unit>> authResponse}) =
      _$_PasswordFormState;

  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PasswordFormStateCopyWith<_PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
