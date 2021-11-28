// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'email_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailFormEventTearOff {
  const _$EmailFormEventTearOff();

  _EmailChanged emailChanged({required String emailString}) {
    return _EmailChanged(
      emailString: emailString,
    );
  }

  _NameChanged nameChanged({required String nameString}) {
    return _NameChanged(
      nameString: nameString,
    );
  }

  _FormSubmitted formSubmitted() {
    return const _FormSubmitted();
  }
}

/// @nodoc
const $EmailFormEvent = _$EmailFormEventTearOff();

/// @nodoc
mixin _$EmailFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String nameString) nameChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String nameString)? nameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailFormEventCopyWith<$Res> {
  factory $EmailFormEventCopyWith(
          EmailFormEvent value, $Res Function(EmailFormEvent) then) =
      _$EmailFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailFormEventCopyWithImpl<$Res>
    implements $EmailFormEventCopyWith<$Res> {
  _$EmailFormEventCopyWithImpl(this._value, this._then);

  final EmailFormEvent _value;
  // ignore: unused_field
  final $Res Function(EmailFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$EmailFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(_EmailChanged(
      emailString: emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.emailString});

  @override
  final String emailString;

  @override
  String toString() {
    return 'EmailFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailString, emailString) ||
                const DeepCollectionEquality()
                    .equals(other.emailString, emailString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailString);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String nameString) nameChanged,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String nameString)? nameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements EmailFormEvent {
  const factory _EmailChanged({required String emailString}) = _$_EmailChanged;

  String get emailString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameString});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$EmailFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameString = freezed,
  }) {
    return _then(_NameChanged(
      nameString: nameString == freezed
          ? _value.nameString
          : nameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.nameString});

  @override
  final String nameString;

  @override
  String toString() {
    return 'EmailFormEvent.nameChanged(nameString: $nameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameString, nameString) ||
                const DeepCollectionEquality()
                    .equals(other.nameString, nameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameString);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String nameString) nameChanged,
    required TResult Function() formSubmitted,
  }) {
    return nameChanged(nameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String nameString)? nameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements EmailFormEvent {
  const factory _NameChanged({required String nameString}) = _$_NameChanged;

  String get nameString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormSubmittedCopyWith<$Res> {
  factory _$FormSubmittedCopyWith(
          _FormSubmitted value, $Res Function(_FormSubmitted) then) =
      __$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FormSubmittedCopyWithImpl<$Res>
    extends _$EmailFormEventCopyWithImpl<$Res>
    implements _$FormSubmittedCopyWith<$Res> {
  __$FormSubmittedCopyWithImpl(
      _FormSubmitted _value, $Res Function(_FormSubmitted) _then)
      : super(_value, (v) => _then(v as _FormSubmitted));

  @override
  _FormSubmitted get _value => super._value as _FormSubmitted;
}

/// @nodoc
class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'EmailFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String nameString) nameChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String nameString)? nameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements EmailFormEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
class _$EmailFormStateTearOff {
  const _$EmailFormStateTearOff();

  _EmailFormState call(
      {required EmailAddress emailAddress,
      required FullName fullName,
      required bool isSubmitting,
      required bool showErrorMessages,
      required bool emailNotAvailable,
      required Option<Either<AuthFailure, bool>> newUserResponse}) {
    return _EmailFormState(
      emailAddress: emailAddress,
      fullName: fullName,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      emailNotAvailable: emailNotAvailable,
      newUserResponse: newUserResponse,
    );
  }
}

/// @nodoc
const $EmailFormState = _$EmailFormStateTearOff();

/// @nodoc
mixin _$EmailFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get emailNotAvailable => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, bool>> get newUserResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailFormStateCopyWith<EmailFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailFormStateCopyWith<$Res> {
  factory $EmailFormStateCopyWith(
          EmailFormState value, $Res Function(EmailFormState) then) =
      _$EmailFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      FullName fullName,
      bool isSubmitting,
      bool showErrorMessages,
      bool emailNotAvailable,
      Option<Either<AuthFailure, bool>> newUserResponse});
}

/// @nodoc
class _$EmailFormStateCopyWithImpl<$Res>
    implements $EmailFormStateCopyWith<$Res> {
  _$EmailFormStateCopyWithImpl(this._value, this._then);

  final EmailFormState _value;
  // ignore: unused_field
  final $Res Function(EmailFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? fullName = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? emailNotAvailable = freezed,
    Object? newUserResponse = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotAvailable: emailNotAvailable == freezed
          ? _value.emailNotAvailable
          : emailNotAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      newUserResponse: newUserResponse == freezed
          ? _value.newUserResponse
          : newUserResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc
abstract class _$EmailFormStateCopyWith<$Res>
    implements $EmailFormStateCopyWith<$Res> {
  factory _$EmailFormStateCopyWith(
          _EmailFormState value, $Res Function(_EmailFormState) then) =
      __$EmailFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      FullName fullName,
      bool isSubmitting,
      bool showErrorMessages,
      bool emailNotAvailable,
      Option<Either<AuthFailure, bool>> newUserResponse});
}

/// @nodoc
class __$EmailFormStateCopyWithImpl<$Res>
    extends _$EmailFormStateCopyWithImpl<$Res>
    implements _$EmailFormStateCopyWith<$Res> {
  __$EmailFormStateCopyWithImpl(
      _EmailFormState _value, $Res Function(_EmailFormState) _then)
      : super(_value, (v) => _then(v as _EmailFormState));

  @override
  _EmailFormState get _value => super._value as _EmailFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? fullName = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? emailNotAvailable = freezed,
    Object? newUserResponse = freezed,
  }) {
    return _then(_EmailFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotAvailable: emailNotAvailable == freezed
          ? _value.emailNotAvailable
          : emailNotAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      newUserResponse: newUserResponse == freezed
          ? _value.newUserResponse
          : newUserResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc
class _$_EmailFormState implements _EmailFormState {
  const _$_EmailFormState(
      {required this.emailAddress,
      required this.fullName,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.emailNotAvailable,
      required this.newUserResponse});

  @override
  final EmailAddress emailAddress;
  @override
  final FullName fullName;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool emailNotAvailable;
  @override
  final Option<Either<AuthFailure, bool>> newUserResponse;

  @override
  String toString() {
    return 'EmailFormState(emailAddress: $emailAddress, fullName: $fullName, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, emailNotAvailable: $emailNotAvailable, newUserResponse: $newUserResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.emailNotAvailable, emailNotAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.emailNotAvailable, emailNotAvailable)) &&
            (identical(other.newUserResponse, newUserResponse) ||
                const DeepCollectionEquality()
                    .equals(other.newUserResponse, newUserResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(emailNotAvailable) ^
      const DeepCollectionEquality().hash(newUserResponse);

  @JsonKey(ignore: true)
  @override
  _$EmailFormStateCopyWith<_EmailFormState> get copyWith =>
      __$EmailFormStateCopyWithImpl<_EmailFormState>(this, _$identity);
}

abstract class _EmailFormState implements EmailFormState {
  const factory _EmailFormState(
          {required EmailAddress emailAddress,
          required FullName fullName,
          required bool isSubmitting,
          required bool showErrorMessages,
          required bool emailNotAvailable,
          required Option<Either<AuthFailure, bool>> newUserResponse}) =
      _$_EmailFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get emailNotAvailable => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, bool>> get newUserResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailFormStateCopyWith<_EmailFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
