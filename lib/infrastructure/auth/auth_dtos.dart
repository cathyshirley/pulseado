import 'package:pulseado/domain/core/value_failures.dart';
import 'package:pulseado/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';

class UsernameAvailablity extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory UsernameAvailablity(String response) {
    return UsernameAvailablity._(validateUsernameAvailablityResponse(response));
  }

  const UsernameAvailablity._(this.value);
}

class EmailAvailablity extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory EmailAvailablity(String response) {
    return EmailAvailablity._(validateEmailAvailablityResponse(response));
  }

  const EmailAvailablity._(this.value);
}

Either<ValueFailure<bool>, bool> validateUsernameAvailablityResponse(
    String input) {
  if (input == 'true') {
    return right(false);
  } else if (input == 'null') {
    return right(true);
  }
  return left(const ValueFailure.invalidResponse(failedValue: false));
}

Either<ValueFailure<bool>, bool> validateEmailAvailablityResponse(
    String input) {
  if (input == 'true') {
    return right(false);
  } else if (input == 'null') {
    return right(true);
  }
  return left(const ValueFailure.invalidResponse(failedValue: false));
}
