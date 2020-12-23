import '../actions/get_next_page.dart';
import '../actions/get_previous_page.dart';
import '../actions/set_page.dart';
import '../actions/set_quality.dart';
import '../actions/set_rating.dart';
import '../actions/set_selected.dart';
import '../models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  if (action is SetRating) {
    builder.rating = action.rating;
  } else if (action is SetQuality) {
    builder.quality = action.quality;
  } else if (action is SetPage) {
    builder.page = action.page;
  } else if (action is SetSelected) {
    builder.selected = action.selected;
    print(builder.selected);
  }

  if (action is GetNextPageStart) {
    builder.isLoading = true;
  } else if (action is GetNextPageSuccessful) {
    builder.movies.clear();
    builder.movies.addAll(action.movies);
    builder.page += 1;
    builder.isLoading = false;
  } else if (action is GetNextPageError) {
    builder.isLoading = false;
  } else if (action is GetPreviousPageStart) {
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
