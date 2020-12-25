import '../actions/add_liked_photo.dart';

import '../actions/get_photo.dart';
import '../actions/set_user.dart';
import '../models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  print(action);

  if (action is GetPhotoStart) {
    builder.isLoading = true;
  } else if (action is GetPhotoSuccessful) {
    builder.photo = action.photo;
    builder.isLoading = false;
  } else if (action is GetPhotoError) {
    builder.isLoading = false;
  } else if (action is SetUser) {
    builder.username = action.user;
  } else if (action is AddLikedPhoto) {
    if (builder.likedPhotos.length >= 10) {
      builder.likedPhotos.removeAt(0);
    }
    if (builder.likedPhotos.contains(action.photo)) {
      builder.likedPhotos.remove(action.photo);
    } else {
      builder.likedPhotos.add(action.photo);
    }
  }

  return builder.build();
}
