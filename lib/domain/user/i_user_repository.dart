import 'dart:io';

import 'package:pulseado/domain/auth/current_user.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<RepositoryFailure, User>> fetchUserData(UniqueId uID);
  Future<Either<RepositoryFailure, Unit>> uploadProfilePicture(
      File file, UniqueId uniqueId);
  Future<Either<RepositoryFailure, String>> getProfilePicture(
      UniqueId uniqueId);
}
