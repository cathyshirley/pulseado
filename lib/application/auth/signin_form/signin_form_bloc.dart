import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signin_form_event.dart';
part 'signin_form_state.dart';
part 'signin_form_bloc.freezed.dart';

@injectable
class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  final IAuthFacade _iAuthFacade;

  SigninFormBloc(this._iAuthFacade) : super(SigninFormState.initial());

  @override
  Stream<SigninFormState> mapEventToState(
    SigninFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authResponse: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authResponse: none(),
        );
      },
      signinWithEmailAndPassword: (e) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authResponse: none(),
          );
          final authResponse = await _iAuthFacade.signInWithEmailAndPassword(
            email: state.emailAddress,
            password: state.password,
          );
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
