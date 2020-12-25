import 'package:teme_flutter/tema06/src/actions/get_photo.dart';

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
  }

  return builder.build();
}
