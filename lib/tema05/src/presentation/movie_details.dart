import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../containers/movie_container.dart';

import '../models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigator.pop(context);
    return MovieContainer(builder: (BuildContext context, Movie movie) {
      return Scaffold(
        appBar: AppBar(
          title: Text('${movie.title}'),
          centerTitle: true,
          backgroundColor: const Color(0xff8b0000),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: const Color(0xff8b0000),
                    ),
                  ),
                  child: Image.network(movie.largeCoverImage, fit: BoxFit.fill),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Genres: ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: movie.genres.join(', ')),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Rating: ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: movie.rating == 0 ? 'not specified' : movie.rating.toString() + ' out of 10'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Runtime: ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: movie.runtime == 0 ? 'not specified' : movie.runtime.toString() + ' minutes'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Year: ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: movie.year == 0 ? 'not specified' : movie.year.toString()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                    icon: const Icon(Icons.open_in_browser),
                    iconSize: 32.0,
                    onPressed: () async {
                      final String url = Uri.encodeFull(movie.url);
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        print('Could not launch $url');
                      }
                    }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
