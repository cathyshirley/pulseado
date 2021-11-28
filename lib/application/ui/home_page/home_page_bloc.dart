import 'dart:async';

import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/domain/auth/current_user.dart';
import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;

  HomePageBloc(this._userRepository, this._authFacade)
      : super(HomePageState.initial());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
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
          yield state.copyWith(
              repositoryResponse: some(repositoryResponse),
              currentPage: 0,
              isFetchingData: false);
        }
      },
      pageChanged: (e) async* {
        yield state.copyWith(currentPage: e.pageNo);
      },
    );
  }
}
