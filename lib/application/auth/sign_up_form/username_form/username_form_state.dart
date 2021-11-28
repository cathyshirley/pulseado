part of 'username_form_bloc.dart';

@freezed
class UsernameFormState with _$UsernameFormState {
  const factory UsernameFormState({
    required Username username,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool usernameNotAvailable,
    required Option<Either<AuthFailure, bool>> newUserResponse,
  }) = _UsernameFormState;

  factory UsernameFormState.initial() => UsernameFormState(
        username: Username(''),
        isSubmitting: false,
        showErrorMessages: false,
        newUserResponse: none(),
        usernameNotAvailable: false,
      );
}
