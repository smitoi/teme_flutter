library user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder) updates]) = _$User;

  factory User.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  User._();

  String get id;

  String get username;

  static Serializer<User> get serializer => _$userSerializer;
}
