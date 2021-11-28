part of 'username_form_bloc.dart';

@freezed
class UsernameFormEvent with _$UsernameFormEvent {
  const factory UsernameFormEvent.usernameChanged(String usernameString) =
      UsernameChanged;
  const factory UsernameFormEvent.submitForm() = SubmitForm;
}
