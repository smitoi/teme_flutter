library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'photo.dart';
import 'photo_urls.dart';
import 'user.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Photo,
  PhotoUrls,
  User,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
