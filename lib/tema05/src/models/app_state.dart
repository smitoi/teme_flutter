library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..page = 0
      ..rating = 0
      ..quality = null
      ..selected = null;
    return builder.build();
  }

  AppState._();

  BuiltList<Movie> get movies;

  int get page;

  bool get isLoading;

  int get rating;

  @nullable
  String get quality;

  @nullable
  int get selected;
}
