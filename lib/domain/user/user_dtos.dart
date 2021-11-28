import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/domain/core/value_objects.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String userName,
    required String fullName,
    required String emailAddress,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
        userName: user.username.getOrCrash(),
        fullName: user.fullName.getOrCrash(),
        emailAddress: user.emailAddress.getOrCrash());
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
