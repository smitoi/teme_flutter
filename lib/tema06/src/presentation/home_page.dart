import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/get_photo.dart';
import '../containers/photo_container.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoContainer(builder: (BuildContext context, Photo photo) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            photo == null ? 'Photo Picker' : '${photo.color}',
            style: TextStyle(
              color: photo == null
                  ? Colors.white
                  : Color(0xFFFFFFFF - int.parse(photo.color.substring(1, 7), radix: 16) + 0xFF000000),
            ),
          ),
          centerTitle: true,
          backgroundColor:
              photo == null ? Colors.black : Color(int.parse(photo.color.substring(1, 7), radix: 16) + 0xFF000000),
        ),
        body: StoreProvider.of<AppState>(context).state.isLoading
            ? const Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black)))
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onDoubleTap: () {
                          print('DOUBLE TAP');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Image.network(photo.urls.smallSizeUrl, fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                          iconSize: 36.0,
                          icon: const Icon(Icons.flip_camera_android),
                          onPressed: StoreProvider.of<AppState>(context).state.isLoading
                              ? null
                              : () {
                                  StoreProvider.of<AppState>(context).dispatch(const GetPhotoStart());
                                }),
                    ),
                  ],
                ),
              ),
      );
    });
  }
}
