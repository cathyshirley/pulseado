part of 'signin_form_bloc.dart';

@freezed
class SigninFormState with _$SigninFormState {
  const factory SigninFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authResponse,
  }) = _SigninFormState;

  factory SigninFormState.initial() => SigninFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      authResponse: none());
}
