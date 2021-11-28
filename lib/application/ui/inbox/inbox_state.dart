part of 'inbox_bloc.dart';

//dsdf
@freezed
class InboxState with _$InboxState {
  const factory InboxState({
    required Option<Either<RepositoryFailure, User>> repositoryResponse,
    required bool isFetchingData,
  }) = _InboxState;
  factory InboxState.initial() =>
      InboxState(isFetchingData: true, repositoryResponse: none());
}
