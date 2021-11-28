part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.userAuthenticated({required UniqueId uniqueId}) =
      UserAuthenticated;
  const factory AuthState.userUnauthenticated() = UserUnauthenticated;
}
