import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

import '../actions/get_photo.dart';
import '../data/unsplash_api.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

class AppMiddleware {
  const AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getPhoto,
    ];
  }

  Future<void> _getPhoto(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetPhotoStart) {
      try {
        final PhotoBuilder photo =
            await _unsplashApi.getPhoto(store.state.username);
        final GetPhotoSuccessful successful = GetPhoto.successful(photo);
        store.dispatch(successful);
      } catch (e) {
        final GetPhotoError error = GetPhoto.error(e);
        store.dispatch(error);
      }
    }
  }
}
