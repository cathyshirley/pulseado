part of 'profile_picture_form_bloc.dart';

@freezed
class ProfilePictureFormState with _$ProfilePictureFormState {
  const factory ProfilePictureFormState({
    required Option<File> file,
    required bool isUploaded,
    required bool isSubmitting,
    required Option<Either<RepositoryFailure, Unit>> response,
  }) = _ProfilePictureFormState;
  factory ProfilePictureFormState.initial() => ProfilePictureFormState(
        file: none(),
        isUploaded: false,
        isSubmitting: false,
        response: none(),
      );
}
