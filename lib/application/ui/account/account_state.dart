part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    required Option<Either<RepositoryFailure, User>> repositoryResponse,
    required Option<String> imageURL,
    required bool isFetchingData,
  }) = _AccountState;
  factory AccountState.initial() => AccountState(
      isFetchingData: true, imageURL: none(), repositoryResponse: none());
}
