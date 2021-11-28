part of 'email_form_bloc.dart';

@freezed
class EmailFormState with _$EmailFormState {
  const factory EmailFormState({
    required EmailAddress emailAddress,
    required FullName fullName,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool emailNotAvailable,
    required Option<Either<AuthFailure, bool>> newUserResponse,
  }) = _EmailFormState;

  factory EmailFormState.initial() => EmailFormState(
        emailAddress: EmailAddress(''),
        fullName: FullName(''),
        isSubmitting: false,
        showErrorMessages: false,
        newUserResponse: none(),
        emailNotAvailable: false,
      );
}
