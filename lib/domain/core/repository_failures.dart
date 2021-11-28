import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_failures.freezed.dart';

@freezed
class RepositoryFailure with _$RepositoryFailure {
  const factory RepositoryFailure.networkError() = NetworkError;
  const factory RepositoryFailure.invalidQuery() = InvalidQuery;
  const factory RepositoryFailure.accessDenied() = AccessDenied;
}
