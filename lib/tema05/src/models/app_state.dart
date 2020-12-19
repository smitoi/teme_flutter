library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder.isLoading = true;
    builder.page = 0;
    builder.moreMovies = true;
    builder.rating = 0;
    builder.quality = null;
    return builder.build();
  }

  AppState._();

  BuiltList<Movie> get movies;

  int get page;

  bool get moreMovies;

  bool get isLoading;

  int get rating;

  @nullable
  String get quality;
}
