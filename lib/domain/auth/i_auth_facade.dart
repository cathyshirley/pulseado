import 'package:pulseado/domain/auth/current_user.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress email, required Password password});
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required User user,
      required EmailAddress email,
      required Password password});
  Future<Either<AuthFailure, bool>> checkUsernameAvailablity(
      {required Username username});
  Future<Either<AuthFailure, bool>> checkEmailAvailablity(
      {required EmailAddress email});
  Option<UniqueId> getCurrentUserUid();
  Future<void> signOut();
}
