library app_state;

import 'package:built_value/built_value.dart';
import 'photo.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder.isLoading = true;
    return builder.build();
  }

  AppState._();

  bool get isLoading;

  @nullable
  Photo get photo;

  @nullable
  String get orientation;

  @nullable
  String get query;

  @nullable
  String get username;
}
