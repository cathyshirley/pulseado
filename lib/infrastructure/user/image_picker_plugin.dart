import 'dart:io';

import 'package:pulseado/domain/user/i_image_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImagePicker)
class ImagePickerPlugin implements IImagePicker {
  final ImagePicker picker;

  ImagePickerPlugin(this.picker);

  @override
  Future<Option<File>> getImageByCamera() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera, maxHeight: 1024, maxWidth: 1024);
    if (pickedFile != null) {
      return some(File(pickedFile.path));
    } else {
      return none();
    }
  }

  @override
  Future<Option<File>> getImageByGallery() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);
    if (pickedFile != null) {
      return some(File(pickedFile.path));
    } else {
      return none();
    }
  }
}
