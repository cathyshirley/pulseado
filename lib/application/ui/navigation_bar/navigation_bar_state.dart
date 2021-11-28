part of 'navigation_bar_bloc.dart';

@freezed
class NavigationBarState with _$NavigationBarState {
  const factory NavigationBarState(
      {required int currentPage,
      required PageController pageController}) = _NavigationBarState;
  factory NavigationBarState.initial() => NavigationBarState(
      currentPage: 0, pageController: PageController(initialPage: 0));
}
