library photo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'photo_urls.dart';
import 'serializers.dart';
import 'user.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Photo._();

  String get id;

  String get color;

  int get width;

  int get height;

  PhotoUrls get urls;

  User get user;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
