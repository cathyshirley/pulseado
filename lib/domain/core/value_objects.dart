import 'package:pulseado/domain/core/value_failures.dart';
import 'package:pulseado/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUidString(String uidString) {
    return UniqueId._(right(uidString));
  }

  const UniqueId._(this.value);
}
