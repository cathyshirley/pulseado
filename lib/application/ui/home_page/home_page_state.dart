part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required int currentPage,
    required Option<Either<RepositoryFailure, User>> repositoryResponse,
    required bool isFetchingData,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
        currentPage: 0,
        repositoryResponse: none(),
        isFetchingData: true,
      );
}
