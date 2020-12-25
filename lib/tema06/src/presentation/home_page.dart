import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:teme_flutter/tema06/src/actions/add_liked_photo.dart';
import 'package:teme_flutter/tema06/src/actions/void_action.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/get_photo.dart';
import '../actions/set_user.dart';
import '../containers/liked_photo_container.dart';
import '../containers/photo_container.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Widget _drawer() {
    return LikedPhotoContainer(
        builder: (BuildContext context, List<Photo> likedPhotos) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  likedPhotos.isEmpty
                      ? "You haven't liked any photo. Like a photo by double tapping on it!"
                      : 'Double tap to unlike a photo. Long press to open it in full size: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: likedPhotos.map((Photo photo) {
                return GestureDetector(
                  onDoubleTap: () {
                    StoreProvider.of<AppState>(context)
                        .dispatch(AddLikedPhoto(photo));
                  },
                  onLongPress: () async {
                    final String url = Uri.encodeFull(photo.urls.fullSizeUrl);
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  child: ListTile(
                    title: Text('Photo ID: ${photo.id}'),
                    subtitle: Text('By: ${photo.user.username}'),
                    trailing: Image.network(photo.urls.thumbSizeUrl),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double _opacity = 0.0;

    return PhotoContainer(builder: (BuildContext context, Photo photo) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            photo == null ? 'Photo Picker' : 'By ${photo.user.username}',
            style: TextStyle(
              color: photo == null
                  ? Colors.white
                  : Color(0xFFFFFFFF -
                      int.parse(photo.color.substring(1, 7), radix: 16) +
                      0xFF000000),
            ),
          ),
          centerTitle: true,
          backgroundColor: photo == null
              ? Colors.black
              : Color(int.parse(photo.color.substring(1, 7), radix: 16) +
                  0xFF000000),
        ),
        drawer: _drawer(),
        body: StoreProvider.of<AppState>(context).state.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black)))
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onDoubleTap: () {
                              StoreProvider.of<AppState>(context)
                                  .dispatch(AddLikedPhoto(photo));
                              _opacity = 1.0;
                              print('Nu s-a rulat timer-ul');
                              Timer(const Duration(milliseconds: 500), () {
                                _opacity = 0;
                                StoreProvider.of<AppState>(context)
                                    .dispatch(const VoidAction());
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.network(photo.urls.smallSizeUrl,
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  iconSize: 36.0,
                                  icon: const Icon(Icons.flip_camera_android),
                                  onPressed: StoreProvider.of<AppState>(context)
                                          .state
                                          .isLoading
                                      ? null
                                      : () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(const GetPhotoStart());
                                        }),
                              IconButton(
                                  iconSize: 36.0,
                                  icon: StoreProvider.of<AppState>(context)
                                              .state
                                              .username ==
                                          null
                                      ? const Icon(Icons.person_add)
                                      : const Icon(Icons.person_remove),
                                  onPressed: () {
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(SetUser(
                                            user: StoreProvider.of<AppState>(
                                                            context)
                                                        .state
                                                        .username ==
                                                    null
                                                ? photo.user.username
                                                : null));
                                  }),
                              IconButton(
                                  iconSize: 36.0,
                                  icon: const Icon(Icons.open_in_new),
                                  onPressed: () async {
                                    final String url =
                                        Uri.encodeFull(photo.urls.fullSizeUrl);
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      print('Could not launch $url');
                                    }
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AnimatedOpacity(
                        child: Align(
                          child: Icon(
                            StoreProvider.of<AppState>(context)
                                    .state
                                    .likedPhotos
                                    .contains(photo)
                                ? Icons.add_circle
                                : Icons.remove_circle,
                            size: 128.0,
                            color: Color(0xFFFFFFFF -
                                int.parse(photo.color.substring(1, 7),
                                    radix: 16) +
                                0xFF000000),
                          ),
                        ),
                        opacity: _opacity,
                        duration: const Duration(milliseconds: 500)),
                  ],
                ),
              ),
      );
    });
  }
}
