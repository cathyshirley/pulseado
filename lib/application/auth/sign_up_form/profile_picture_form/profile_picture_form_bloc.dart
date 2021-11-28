import 'dart:async';
import 'dart:io';

import 'package:pulseado/domain/auth/i_auth_facade.dart';
import 'package:pulseado/domain/core/repository_failures.dart';
import 'package:pulseado/domain/user/i_image_picker.dart';
import 'package:pulseado/domain/user/i_user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_picture_form_event.dart';
part 'profile_picture_form_state.dart';
part 'profile_picture_form_bloc.freezed.dart';

@injectable
class ProfilePictureFormBloc
    extends Bloc<ProfilePictureFormEvent, ProfilePictureFormState> {
  final IImagePicker _imagePicker;
  final IUserRepository _iUserRepository;
  final IAuthFacade _iAuthFacade;
  ProfilePictureFormBloc(
      this._imagePicker, this._iAuthFacade, this._iUserRepository)
      : super(ProfilePictureFormState.initial());

  @override
  Stream<ProfilePictureFormState> mapEventToState(
    ProfilePictureFormEvent event,
  ) async* {
    yield* event.map(
      getByCamera: (e) async* {
        final image = await _imagePicker.getImageByCamera();
        yield state.copyWith(
          file: image,
          isUploaded: false,
          isSubmitting: true,
        );
        final imageFile = image.fold(() => null, (a) => a);
        final uid = _iAuthFacade.getCurrentUserUid().fold(() => null, (a) => a);
        if (imageFile != null && uid != null) {
          final response =
              await _iUserRepository.uploadProfilePicture(imageFile, uid);
          yield state.copyWith(
            file: some(imageFile),
            isSubmitting: false,
            response: some(response),
          );
        }
      },
      getByGallery: (e) async* {
        final image = await _imagePicker.getImageByGallery();
        yield state.copyWith(
          file: image,
          isUploaded: false,
          isSubmitting: true,
        );
        final imageFile = image.fold(() => null, (a) => a);
        final uid = _iAuthFacade.getCurrentUserUid().fold(() => null, (a) => a);
        if (imageFile != null && uid != null) {
          final response =
              await _iUserRepository.uploadProfilePicture(imageFile, uid);
          yield state.copyWith(
            file: some(imageFile),
            isSubmitting: false,
            response: some(response),
          );
        }
      },
    );
  }
}
