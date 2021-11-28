import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required T failedValue}) =
      InvalidPassword<T>;
  const factory ValueFailure.invalidName({required T failedValue}) =
      InvalidName<T>;
  const factory ValueFailure.invalidUsername({required T failedValue}) =
      InvalidUsername<T>;
  const factory ValueFailure.invalidResponse({required T failedValue}) =
      InvalidResponse<T>;
}
