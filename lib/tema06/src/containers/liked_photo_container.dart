import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';
import '../models/photo.dart';

class LikedPhotoContainer extends StatelessWidget {
  const LikedPhotoContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Photo>>(
      converter: (Store<AppState> store) {
        return store.state.likedPhotos;
      },
      builder: builder,
    );
  }
}
