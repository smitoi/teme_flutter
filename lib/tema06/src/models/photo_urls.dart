library photo_urls;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'photo_urls.g.dart';

abstract class PhotoUrls implements Built<PhotoUrls, PhotoUrlsBuilder> {
  factory PhotoUrls([void Function(PhotoUrlsBuilder) updates]) = _$PhotoUrls;

  factory PhotoUrls.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  PhotoUrls._();

  @BuiltValueField(wireName: 'full')
  String get fullSizeUrl;

  @BuiltValueField(wireName: 'small')
  String get smallSizeUrl;

  @BuiltValueField(wireName: 'thumb')
  String get thumbSizeUrl;

  static Serializer<PhotoUrls> get serializer => _$photoUrlsSerializer;
}
