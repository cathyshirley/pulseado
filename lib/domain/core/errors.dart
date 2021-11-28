import 'package:pulseado/domain/core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explaination =
        'Encountered a value failure at unrecoverable point, Terminating. ';
    return Error.safeToString('$explaination Failure: $valueFailure');
  }
}
