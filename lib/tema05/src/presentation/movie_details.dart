import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../containers/movie_container.dart';

import '../models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Navigator.pop(context);
    return MovieContainer(builder: (BuildContext context, int id) {
      return Scaffold(
        appBar: AppBar(
          title: Text('$id'),
        ),
      );
    });
  }
}
