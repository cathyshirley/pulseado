import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:pulseado/presentation/sign_up/sign_up_page.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_form_event.dart';
part 'password_form_state.dart';
part 'password_form_bloc.freezed.dart';

@injectable
class PasswordFormBloc extends Bloc<PasswordFormEvent, PasswordFormState> {
  final IAuthFacade _iAuthFacade;
  PasswordFormBloc(this._iAuthFacade) : super(PasswordFormState.initial());

  @override
  Stream<PasswordFormState> mapEventToState(
    PasswordFormEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authResponse: none(),
        );
      },
      formSubmitted: (e) async* {
        final formDTO = e.formDTO;
        if (formDTO.isValid()) {
          yield state.copyWith(
            showErrorMessages: false,
            isSubmitting: true,
            authResponse: none(),
          );
          final userData = User(
              uniqueId: UniqueId.fromUidString('NULL_UID'),
              username: formDTO.username,
              fullName: formDTO.fullName,
              emailAddress: formDTO.emailAddress,
              imageURI: none());
          final authResponse = await _iAuthFacade.registerWithEmailAndPassword(
              user: userData,
              email: formDTO.emailAddress,
              password: formDTO.password);
          yield state.copyWith(
            isSubmitting: false,
            authResponse: some(authResponse),
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
            authResponse: none(),
          );
        }
      },
    );
  }
}
