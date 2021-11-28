import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'username_form_event.dart';
part 'username_form_state.dart';
part 'username_form_bloc.freezed.dart';

@injectable
class UsernameFormBloc extends Bloc<UsernameFormEvent, UsernameFormState> {
  final IAuthFacade _iAuthFacade;
  UsernameFormBloc(this._iAuthFacade) : super(UsernameFormState.initial());

  @override
  Stream<UsernameFormState> mapEventToState(
    UsernameFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameString),
          newUserResponse: none(),
        );
      },
      submitForm: (e) async* {
        final username = state.username;
        if (username.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            usernameNotAvailable: false,
            newUserResponse: none(),
          );
          final newUserResponse =
              await _iAuthFacade.checkUsernameAvailablity(username: username);

          final bool isAvailable = newUserResponse.getOrElse(() => false);

          yield state.copyWith(
            isSubmitting: false,
            usernameNotAvailable: !isAvailable,
            newUserResponse: some(newUserResponse),
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
            newUserResponse: none(),
            usernameNotAvailable: false,
          );
        }
      },
    );
  }
}
