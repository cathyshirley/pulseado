import 'dart:async';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IAuthFacade _iAuthFacade;
  final IUserRepository _iUserRepository;
  AccountBloc(this._iAuthFacade, this._iUserRepository)
      : super(AccountState.initial());

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final uID = _iAuthFacade.getCurrentUserUid().fold(() => null, (a) => a);
        if (uID != null) {
          final repositoryResponse =
              await _iUserRepository.fetchUserData(uID).then((value) => value);
          yield state.copyWith(
              repositoryResponse: some(repositoryResponse),
              isFetchingData: false);
        }
      },
    );
  }
}
