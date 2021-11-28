part of 'profile_picture_form_bloc.dart';

@freezed
class ProfilePictureFormEvent with _$ProfilePictureFormEvent {
  const factory ProfilePictureFormEvent.getByCamera() = _GetByCamera;
  const factory ProfilePictureFormEvent.getByGallery() = _GetByGallery;
}
