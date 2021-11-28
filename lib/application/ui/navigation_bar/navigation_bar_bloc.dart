import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';
part 'navigation_bar_bloc.freezed.dart';

@injectable
class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(NavigationBarState.initial());

  @override
  Stream<NavigationBarState> mapEventToState(
    NavigationBarEvent event,
  ) async* {
    yield* event.map(
      pageChanged: (e) async* {
        yield state.copyWith(currentPage: e.pageNo);
        state.pageController.jumpToPage(e.pageNo);
      },
    );
  }
}
