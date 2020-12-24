import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/get_next_page.dart';
import '../actions/get_previous_page.dart';
import '../actions/set_page.dart';
import '../actions/set_quality.dart';
import '../actions/set_query.dart';
import '../actions/set_rating.dart';
import '../actions/set_selected.dart';
import '../containers/movies_container.dart';
import '../containers/set_quality_container.dart';
import '../containers/set_query_container.dart';
import '../containers/set_rating_container.dart';
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
          SetQueryContainer(builder: (BuildContext context, String query) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Enter search term: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    autocorrect: false,
                    cursorColor: const Color(0xff8b0000),
                    enabled: !_isLoading(context),
                    onChanged: (String value) {
                      if (value.isNotEmpty) {
                        StoreProvider.of<AppState>(context).dispatch(SetQuery(query: value));
                      }
                    },
                  ),
                ],
              ),
            );
          }),
          SetRatingContainer(builder: (BuildContext context, int rating) {
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
                    value: rating.toDouble(),
                    min: 0.0,
                    max: 10.0,
                    activeColor: const Color(0xff8b0000),
                    inactiveColor: const Color(0xffe8b3b3),
                    onChanged: _isLoading(context)
                        ? null
                        : (double value) {
                            StoreProvider.of<AppState>(context).dispatch(SetRating(value.toInt()));
                          },
                    onChangeEnd: _isLoading(context)
                        ? null
                        : (double value) {
                            StoreProvider.of<AppState>(context).dispatch(SetRating(value.toInt()));
                          },
                  ),
                ],
              ),
            );
          }),
          SetQualityContainer(builder: (BuildContext context, String quality) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <String>[
                  '720p',
                  '1080p',
                  '2160p',
                  null,
                ].map((String _quality) {
                  return ListTile(
                    title: Text(_quality ?? 'None'),
                    leading: Radio<String>(
                        groupValue: quality,
                        value: _quality,
                        activeColor: const Color(0xff8b0000),
                        onChanged: _isLoading(context)
                            ? null
                            : (String value) {
                                StoreProvider.of<AppState>(context).dispatch(SetQuality(quality: value));
                              }),
                  );
                }).toList(),
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
                icon: const Icon(Icons.search),
                iconSize: 48.0,
                onPressed: _isLoading(context)
                    ? null
                    : () {
                        StoreProvider.of<AppState>(context).dispatch(const SetPage(0));
                        StoreProvider.of<AppState>(context).dispatch(const GetNextPage());
                        StoreProvider.of<AppState>(context).dispatch(const SetQuery(query: null));
                        Navigator.pop(context);
                      }),
          ),
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
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(SetSelected(index));
                          Navigator.pushNamed(context, '/movieDetails');
                        },
                        child: Ink(
                          child: ListTile(
                            leading: Image.network(movies[index].mediumCoverImage),
                            title: Text(
                                movies[index].year == null
                                    ? movies[index].title
                                    : '${movies[index].title} (${movies[index].year})',
                                style: const TextStyle(fontSize: 16.0)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(movies[index].genres.join(', '), style: const TextStyle(fontSize: 12.0)),
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
                      IconButton(
                          icon: const Icon(Icons.arrow_left),
                          onPressed: _previousPageExists(context)
                              ? null
                              : () {
                                  StoreProvider.of<AppState>(context).dispatch(const GetPreviousPage());
                                }),
                      if (_isLoading(context))
                        const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff8b0000)),
                        )
                      else
                        Text('${StoreProvider.of<AppState>(context).state.page}'),
                      IconButton(
                          icon: const Icon(Icons.arrow_right),
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
