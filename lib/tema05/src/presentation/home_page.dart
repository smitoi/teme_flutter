import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/get_movies.dart';
import '../actions/get_next_page.dart';
import '../actions/get_previous_page.dart';
import '../actions/set_actions.dart';
import '../containers/movies_container.dart';
import '../models/app_state.dart';
import '../models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Options: ',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://nypost.com/wp-content/uploads/sites/2/2020/09/popcorn.jpg?quality=80&strip=all&w=1200'),
              ),
            ),
          ),
          StoreConnector<AppState, int>(
              converter: (Store<AppState> store) => store.state.rating,
              builder: (BuildContext context, int rating) {
                double _ratingValue = rating.toDouble();
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Minimum rating: $rating',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Slider(
                        value: _ratingValue,
                        min: 0.0,
                        max: 10.0,
                        activeColor: const Color(0xff8b0000),
                        inactiveColor: const Color(0xffe8b3b3),
                        onChanged: _isLoading(context)
                            ? null
                            : (double value) {
                                _ratingValue = value;
                                StoreProvider.of<AppState>(context).dispatch(SetRating(value.toInt()));
                              },
                        onChangeEnd: _isLoading(context)
                            ? null
                            : (double value) {
                                _ratingValue = value;
                                StoreProvider.of<AppState>(context).dispatch(SetRating(value.toInt()));
                                StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                              },
                      ),
                    ],
                  ),
                );
              }),
          StoreConnector<AppState, String>(
              converter: (Store<AppState> store) => store.state.quality,
              builder: (BuildContext context, String quality) {
                String _quality = quality;
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        quality == null ? 'No quality was selected' : 'Selected quality: $quality',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      ListTile(
                        title: const Text('720p'),
                        leading: Radio<String>(
                          groupValue: _quality,
                          value: '720p',
                          activeColor: const Color(0xff8b0000),
                          onChanged: _isLoading(context)
                              ? null
                              : (String value) {
                                  _quality = value;
                                  StoreProvider.of<AppState>(context).dispatch(SetQuality(value));
                                  StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                                },
                        ),
                      ),
                      ListTile(
                        title: const Text('1080p'),
                        leading: Radio<String>(
                          groupValue: _quality,
                          value: '1080p',
                          activeColor: const Color(0xff8b0000),
                          onChanged: _isLoading(context)
                              ? null
                              : (String value) {
                                  _quality = value;
                                  StoreProvider.of<AppState>(context).dispatch(SetQuality(value));
                                  StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                                },
                        ),
                      ),
                      ListTile(
                        title: const Text('2160p'),
                        leading: Radio<String>(
                          groupValue: _quality,
                          value: '2160p',
                          activeColor: const Color(0xff8b0000),
                          onChanged: _isLoading(context)
                              ? null
                              : (String value) {
                                  _quality = value;
                                  StoreProvider.of<AppState>(context).dispatch(SetQuality(value));
                                  StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                                },
                        ),
                      ),
                      ListTile(
                        title: const Text('None'),
                        leading: Radio<String>(
                          groupValue: _quality,
                          value: null,
                          activeColor: const Color(0xff8b0000),
                          onChanged: _isLoading(context)
                              ? null
                              : (String value) {
                                  _quality = value;
                                  StoreProvider.of<AppState>(context).dispatch(SetQuality(value));
                                  StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                                },
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }

  bool _isLoading(BuildContext context) {
    return StoreProvider.of<AppState>(context).state.isLoading == null ||
        StoreProvider.of<AppState>(context).state.isLoading == true;
  }

  bool _nextPageExists(BuildContext context) {
    return StoreProvider.of<AppState>(context).state.isLoading ||
        StoreProvider.of<AppState>(context).state.movies.length < 20;
  }

  bool _previousPageExists(BuildContext context) {
    return StoreProvider.of<AppState>(context).state.isLoading || StoreProvider.of<AppState>(context).state.page == 1;
  }

  @override
  Widget build(BuildContext context) {
    return MoviesContainer(
      builder: (BuildContext context, BuiltList<Movie> movies) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Movie Night'),
            centerTitle: true,
            backgroundColor: const Color(0xff8b0000),
          ),
          drawer: _drawer(context),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Ink(
                          child: ListTile(
                            leading: Image.network(movies[index].mediumCoverImage),
                            title: Text(movies[index].title, style: const TextStyle(fontSize: 16.0)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(movies[index].genres.join(', '), style: const TextStyle(fontSize: 8.0)),
                                Text(
                                    'Rating: ' +
                                        (movies[index].rating == 0
                                            ? 'not specified'
                                            : movies[index].rating.toString() + ' out of 10'),
                                    style: const TextStyle(fontSize: 8.0)),
                                Text(
                                    'Runtime: ' +
                                        (movies[index].runtime == 0
                                            ? 'not specified'
                                            : movies[index].runtime.toString() + ' minutes'),
                                    style: const TextStyle(fontSize: 8.0)),
                                Text(
                                    'Year: ' +
                                        (movies[index].year == 0 ? 'not specified' : movies[index].year.toString()),
                                    style: const TextStyle(fontSize: 8.0)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          child: const Text('Prev. page'),
                          onPressed: _previousPageExists(context)
                              ? null
                              : () {
                                  StoreProvider.of<AppState>(context).dispatch(const GetPreviousPage());
                                }),
                      RaisedButton(
                          child: const Text('Next page'),
                          onPressed: _nextPageExists(context)
                              ? null
                              : () {
                                  StoreProvider.of<AppState>(context).dispatch(const GetNextPage());
                                }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
