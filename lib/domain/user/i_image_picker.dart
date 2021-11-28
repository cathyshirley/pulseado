import 'dart:io';

import 'package:dartz/dartz.dart';

abstract class IImagePicker {
  Future<Option<File>> getImageByCamera();
  Future<Option<File>> getImageByGallery();
}
