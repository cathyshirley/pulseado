import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inbox_event.dart';
part 'inbox_state.dart';
part 'inbox_bloc.freezed.dart';

@injectable
class InboxBloc extends Bloc<InboxEvent, InboxState> {
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;
  InboxBloc(this._userRepository, this._authFacade)
      : super(InboxState.initial());

  @override
  Stream<InboxState> mapEventToState(
    InboxEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final uId = _authFacade.getCurrentUserUid().fold(
              //TODO: Implement logout
              () => null,
              (a) => a,
            );
        if (uId != null) {
          final repositoryResponse = await _userRepository.fetchUserData(uId);
          // print(repositoryResponse);
          yield state.copyWith(
              repositoryResponse: some(repositoryResponse),
              isFetchingData: false);
        }
      },
    );
  }
}
