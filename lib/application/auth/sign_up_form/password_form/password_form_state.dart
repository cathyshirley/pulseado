part of 'password_form_bloc.dart';

@freezed
class PasswordFormState with _$PasswordFormState {
  const factory PasswordFormState({
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authResponse,
  }) = _PasswordFormState;

  factory PasswordFormState.initial() => PasswordFormState(
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authResponse: none(),
      );
}
