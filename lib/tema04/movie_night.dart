import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class Movie {
  Movie({@required this.title, @required this.imageUrl, @required this.year, @required this.genres});

  Movie.fromJson(dynamic item)
      : title = item['title'],
        year = item['year'],
        imageUrl = item['medium_cover_image'],
        genres = item['genres'] == null ? <String>[] : List<String>.from(item['genres']);

  final String title;
  final String imageUrl;
  final int year;
  final List<String> genres;

  @override
  String toString() {
    return 'Movie{title: $title, year: $year, imageUrl: $imageUrl, genres: $genres}';
  }
}

class _HomePageState extends State<HomePage> {
  List<Movie> _movieList = <Movie>[];
  int _page = 0;
  int _minimumRating = 0;
  bool _disabledButtons = true;
  bool _noMoreMovies = false;
  String _quality;
  String _sortBy = 'date_added';

  @override
  void initState() {
    super.initState();
    _loadMovies(1);
  }

  Widget _drawer() {
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Select the desired quality:',
                  style: TextStyle(
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
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _quality = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('1080p'),
                  leading: Radio<String>(
                    groupValue: _quality,
                    value: '1080p',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _quality = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('2160p'),
                  leading: Radio<String>(
                    groupValue: _quality,
                    value: '2160p',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _quality = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('None'),
                  leading: Radio<String>(
                    groupValue: _quality,
                    value: null,
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _quality = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Minimum rating: $_minimumRating',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Slider(
                  value: _minimumRating.toDouble(),
                  min: 0.0,
                  max: 10.0,
                  onChanged: _disabledButtons
                      ? null
                      : (double value) {
                          setState(() {
                            _minimumRating = value.toInt();
                          });
                        },
                  onChangeEnd: _disabledButtons
                      ? null
                      : (double value) {
                          setState(() {
                            _minimumRating = value.toInt();
                            _loadMovies(-_page + 1);
                          });
                        },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'The movies will be sorted by:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                ListTile(
                  title: const Text('Added date'),
                  leading: Radio<String>(
                    groupValue: _sortBy,
                    value: 'date_added',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _sortBy = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('Title'),
                  leading: Radio<String>(
                    groupValue: _sortBy,
                    value: 'title',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _sortBy = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('Year'),
                  leading: Radio<String>(
                    groupValue: _sortBy,
                    value: 'year',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _sortBy = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
                ListTile(
                  title: const Text('Rating'),
                  leading: Radio<String>(
                    groupValue: _sortBy,
                    value: 'rating',
                    onChanged: _disabledButtons
                        ? null
                        : (String value) {
                            setState(() {
                              _sortBy = value;
                              _loadMovies(-_page + 1);
                            });
                          },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _loadMovies(int index) async {
    setState(() {
      print('Begin loading...');
      print('Index: $index');
      print('Page: $_page');
      print('Buttons not disabled: $_disabledButtons');
      if (_page + index > 0) {
        _page += index;
        _disabledButtons = true;
      } else {
        return;
      }
    });
    String requestUrl = 'https://yts.mx/api/v2/list_movies.json?page=$_page';

    if (_quality != null) {
      requestUrl += '&quality=$_quality';
    }

    requestUrl += '&minimum_rating=$_minimumRating';
    requestUrl += '&sort_by=$_sortBy';

    print('Request at: $requestUrl');
    final Response response = await get(requestUrl);
    final Map<String, dynamic> map = jsonDecode(response.body);
    final List<dynamic> movieData = map['data']['movies'];

    _movieList = movieData.map((dynamic item) => Movie.fromJson(item)).toList();
    print(_movieList);

    if (_movieList.length < 20) {
      _noMoreMovies = true;
    } else {
      _noMoreMovies = false;
    }

    setState(() {
      print('End loading...');
      print('Index: $index');
      print('Page: $_page');
      print('Buttons not disabled: $_disabledButtons');
      print('No. of movies: ' + _movieList.length.toString());
      _disabledButtons = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movie Night',
        ),
        backgroundColor: const Color(0xff8b0000),
      ),
      drawer: _drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _movieList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Ink(
                      child: ListTile(
                        leading: Image.network(_movieList[index].imageUrl),
                        title: Text(_movieList[index].title, style: const TextStyle(fontSize: 16.0)),
                        subtitle: Text(_movieList[index].genres.join(', '), style: const TextStyle(fontSize: 8.0)),
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
                    onPressed: _disabledButtons || _page == 1 ? null : () => _loadMovies(-1),
                  ),
                  RaisedButton(
                    child: const Text('Next page'),
                    onPressed: _disabledButtons || _noMoreMovies ? null : () => _loadMovies(1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
