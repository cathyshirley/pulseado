import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyExist() = EmailAlreadyExist;
  const factory AuthFailure.usernameAlreadyExist() = UsernameAlreadyExist;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.unknownErrorOccurred() = UnknownErrorOccured;
}
