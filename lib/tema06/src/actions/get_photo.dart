library get_photo;

import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/photo.dart';

part 'get_photo.freezed.dart';

@freezed
abstract class GetPhoto with _$GetPhoto {
  const factory GetPhoto() = GetPhotoStart;

  const factory GetPhoto.successful(PhotoBuilder photo) = GetPhotoSuccessful;

  const factory GetPhoto.error(dynamic error) = GetPhotoError;
}
