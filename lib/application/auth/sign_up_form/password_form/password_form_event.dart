part of 'password_form_bloc.dart';

@freezed
class PasswordFormEvent with _$PasswordFormEvent {
  const factory PasswordFormEvent.passwordChanged(
      {required String passwordString}) = PasswordChanged;
  const factory PasswordFormEvent.formSubmitted({required FormDTO formDTO}) =
      FormSubmitted;
}
