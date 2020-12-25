library set_user;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_user.freezed.dart';

@freezed
abstract class SetUser with _$SetUser {
  const factory SetUser({String user}) = _SetUser;
}
