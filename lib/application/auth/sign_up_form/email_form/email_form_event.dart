part of 'email_form_bloc.dart';

@freezed
class EmailFormEvent with _$EmailFormEvent {
  const factory EmailFormEvent.emailChanged({required String emailString}) =
      _EmailChanged;
  const factory EmailFormEvent.nameChanged({required String nameString}) =
      _NameChanged;
  const factory EmailFormEvent.formSubmitted() = _FormSubmitted;
}
