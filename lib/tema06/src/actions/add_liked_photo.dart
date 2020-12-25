library add_liked_photo;

import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/photo.dart';

part 'add_liked_photo.freezed.dart';

@freezed
abstract class AddLikedPhoto with _$AddLikedPhoto {
  const factory AddLikedPhoto(Photo photo) = _AddLikedPhoto;
}
