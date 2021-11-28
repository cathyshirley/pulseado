import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        yield _iAuthFacade.getCurrentUserUid().fold(
          () {
            return const AuthState.userUnauthenticated();
          },
          (a) {
            return AuthState.userAuthenticated(uniqueId: a);
          },
        );
      },
      userSignedOut: (e) async* {
        await _iAuthFacade.signOut();
        yield const AuthState.userUnauthenticated();
      },
    );
  }
}
