import 'package:pulseado/domain/core/value_failures.dart';
import 'package:pulseado/domain/core/value_object.dart';
import 'package:pulseado/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  final String md5Hash;

  factory EmailAddress(String input) {
    final String md5String = md5.convert(utf8.encode(input)).toString();

    return EmailAddress._(validateEmailAddress(input), md5String);
  }

  const EmailAddress._(this.value, this.md5Hash);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // late bool verified;

  factory Username(String input) {
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  String initials() => toInitials(value.fold((l) => '', (r) => r));

  factory FullName(String input) {
    return FullName._(validateName(input));
  }

  const FullName._(this.value);

  String toInitials(String name) {
    final nameList = name.split(' ');
    var initials = '';
    if (nameList.length >= 3) {
      initials += nameList[0][0].toUpperCase();
      initials += nameList.last[0].toUpperCase();
    } else if (nameList.length == 2) {
      initials += nameList[0][0].toUpperCase();
      initials += nameList[1][0].toUpperCase();
    } else {
      initials += nameList[0][0].toUpperCase();
    }
    return initials;
  }
}
