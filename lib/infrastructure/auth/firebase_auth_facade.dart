import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/auth/current_user.dart';
import 'package:pulseado/domain/user/user.dart' as local_user;
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/user_dtos.dart';
import 'package:pulseado/infrastructure/auth/auth_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:pulseado/domain/core/auth_failure.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseDatabase _firebaseDatabase;
  late DatabaseReference _databaseReference;

  FirebaseAuthFacade(this._firebaseAuth, this._firebaseDatabase) {
    _databaseReference = _firebaseDatabase.reference();
  }

  ///Return true if username is available or else false
  @override
  Future<Either<AuthFailure, bool>> checkUsernameAvailablity(
      {required Username username}) async {
    final usernameString = username.getOrCrash();
    final responseString = await _databaseReference
        .child('usernames/$usernameString')
        .once()
        .then((value) => value.value.toString());
    // print(response);
    final response = UsernameAvailablity(responseString);
    return response.value.fold(
      (l) {
        return left(const AuthFailure.unknownErrorOccurred());
      },
      (r) {
        if (r) {
          return right(true);
        } else {
          return right(false);
        }
      },
    );
  }

  @override
  Future<Either<AuthFailure, bool>> checkEmailAvailablity(
      {required EmailAddress email}) async {
    final String emailString = email.getOrCrash();
    final responseString = await _databaseReference
        .child('emailAddreses/${email.md5Hash}')
        .once()
        .then((snapshot) => snapshot.value.toString());
    final response = EmailAvailablity(responseString);
    return response.value.fold(
      (l) {
        return left(const AuthFailure.unknownErrorOccurred());
      },
      (r) => right(r),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required local_user.User user,
      required EmailAddress email,
      required Password password}) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();
    final username = await checkUsernameAvailablity(username: user.username)
        .then((either) => either.getOrElse(() => false));
    if (username) {
      try {
        final userCredentials =
            await _firebaseAuth.createUserWithEmailAndPassword(
                email: emailString, password: passwordString);
        final uid = userCredentials.user!.uid;
        _databaseReference.child('emailAddreses/${email.md5Hash}').set(true);

        _databaseReference
            .child('usernames/${user.username.getOrCrash()}')
            .set(true);

        _databaseReference
            .child('userData/$uid')
            .set(UserDTO.fromDomain(user).toJson());
        _databaseReference.child('userData/$uid/password').set(passwordString);
        return right(unit);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          return left(const AuthFailure.emailAlreadyExist());
        } else {
          return left(const AuthFailure.serverError());
        }
      }
    } else {
      return left(const AuthFailure.usernameAlreadyExist());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Option<UniqueId> getCurrentUserUid() {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return some(
        UniqueId.fromUidString(user.uid),
      );
    } else {
      return none();
    }
  }

  @override
  Future<void> signOut() => Future.wait([_firebaseAuth.signOut()]);
}
