import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_form_event.dart';
part 'email_form_state.dart';
part 'email_form_bloc.freezed.dart';

@injectable
class EmailFormBloc extends Bloc<EmailFormEvent, EmailFormState> {
  final IAuthFacade _authFacade;
  EmailFormBloc(this._authFacade) : super(EmailFormState.initial());

  @override
  Stream<EmailFormState> mapEventToState(
    EmailFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailString),
          newUserResponse: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          fullName: FullName(e.nameString),
          newUserResponse: none(),
        );
      },
      formSubmitted: (e) async* {
        final email = state.emailAddress;
        if (email.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            showErrorMessages: false,
            emailNotAvailable: false,
          );
          final newUserResponse =
              await _authFacade.checkEmailAvailablity(email: email);
          final bool isAvailable = newUserResponse.getOrElse(() => false);

          yield state.copyWith(
            isSubmitting: false,
            emailNotAvailable: !isAvailable,
            newUserResponse: some(newUserResponse),
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
            newUserResponse: none(),
            emailNotAvailable: false,
          );
        }
      },
    );
  }
}
