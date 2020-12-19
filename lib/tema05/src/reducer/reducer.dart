import '../actions/get_movies.dart';
import '../actions/get_next_page.dart';
import '../actions/get_previous_page.dart';
import '../actions/set_actions.dart';
import '../models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();
  if (action is SetRating) {
    builder.rating = action.rating;
  } else if (action is SetQuality) {
    builder.quality = action.quality;
  } else if (action is GetMovies) {
    builder.isLoading = true;
  } else if (action is GetMoviesSuccessful) {
    builder.movies.clear();
    builder.movies.addAll(action.movies);
    builder.page = 1;
    builder.isLoading = false;
  } else if (action is GetMoviesError) {
    builder.isLoading = false;
  } else if (action is GetNextPage) {
    builder.isLoading = true;
  } else if (action is GetNextPageSuccessful) {
    builder.movies.clear();
    builder.movies.addAll(action.movies);
    builder.page += 1;
    builder.isLoading = false;
  } else if (action is GetNextPageError) {
    builder.isLoading = false;
  } else if (action is GetPreviousPage) {
    builder.isLoading = true;
  } else if (action is GetPreviousPageSuccessful) {
    builder.movies.clear();
    builder.movies.addAll(action.movies);
    builder.page -= 1;
    builder.isLoading = false;
  } else if (action is GetPreviousPageError) {
    builder.isLoading = false;
  }

  return builder.build();
}
