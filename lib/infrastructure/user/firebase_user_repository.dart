import 'dart:convert';
import 'dart:io';

import 'package:pulseado/domain/auth/current_user.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:pulseado/domain/user/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class FirebaseUserRepository implements IUserRepository {
  final FirebaseDatabase _firebaseDatabase;
  final FirebaseStorage _firebaseStorage;
  late DatabaseReference _databaseReference;

  FirebaseUserRepository(this._firebaseDatabase, this._firebaseStorage) {
    _databaseReference = _firebaseDatabase.reference();
  }

  @override
  Future<Either<RepositoryFailure, Unit>> uploadProfilePicture(
      File file, UniqueId uniqueId) async {
    try {
      await _firebaseStorage
          .ref()
          .child('profile_pictures/${uniqueId.getOrCrash()}.jpg')
          .putFile(file);
      return right(unit);
    } on FirebaseException catch (e) {
      return left(const RepositoryFailure.networkError());
    }
  }

  @override
  Future<Either<RepositoryFailure, User>> fetchUserData(UniqueId uID) async {
    String uId = uID.getOrCrash();
    final snap = await _databaseReference
        .child('userData/$uId')
        .once()
        .then((DataSnapshot snapshot) => snapshot.value);
    var imageString = '';
    try {
      imageString = await _firebaseStorage
          .ref()
          .child('profile_pictures/${uID.getOrCrash()}.jpg')
          .getDownloadURL()
          .then((value) => value);
    } catch (e) {
      imageString = '';
    }
    final cleanMap = jsonDecode(jsonEncode(snap));
    final userDTO = UserDTO.fromJson(cleanMap as Map<String, dynamic>);
    final user = User(
      uniqueId: uID,
      username: Username(userDTO.userName),
      fullName: FullName(userDTO.fullName),
      emailAddress: EmailAddress(userDTO.emailAddress),
      imageURI: imageString != '' ? some(imageString) : none(),
    );
    return right(user);
  }

  @override
  Future<Either<RepositoryFailure, String>> getProfilePicture(
      UniqueId uniqueId) async {
    try {
      final imageString = await _firebaseStorage
          .ref()
          .child('profile_pictures/${uniqueId.getOrCrash()}.jpg')
          .getDownloadURL();
      return right(imageString);
    } on FirebaseException catch (e) {
      return left(const RepositoryFailure.networkError());
    }
  }
}
