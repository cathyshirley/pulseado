part of 'navigation_bar_bloc.dart';

@freezed
class NavigationBarEvent with _$NavigationBarEvent {
  const factory NavigationBarEvent.pageChanged({required int pageNo}) =
      _PageChanged;
}
