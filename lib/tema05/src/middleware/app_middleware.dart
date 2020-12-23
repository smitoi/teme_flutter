import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

import '../actions/get_next_page.dart';
import '../actions/get_previous_page.dart';
import '../data/yts_api.dart';
import '../models/app_state.dart';
import '../models/movie.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMovies,
    ];
  }

  Future<void> _getMovies(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetNextPageStart) {
      try {
        final List<Movie> movies =
            await _ytsApi.getMovies(store.state.page + 1, store.state.rating, store.state.quality);

        final GetNextPageSuccessful successful = GetNextPage.successful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetNextPageError error = GetNextPage.error(e);
        store.dispatch(error);
      }
    } else if (action is GetPreviousPageStart) {
      try {
        final List<Movie> movies =
            await _ytsApi.getMovies(store.state.page - 1, store.state.rating, store.state.quality);

        final GetPreviousPageSuccessful successful = GetPreviousPage.successful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetPreviousPageError error = GetPreviousPage.error(e);
        store.dispatch(error);
      }
    }
  }
}
