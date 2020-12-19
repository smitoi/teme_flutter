import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart';
import '../models/movie.dart';

class YtsApi {
  const YtsApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Movie>> getMovies(int page, int rating, String quality) async {
    String url =
        'https://yts.mx/api/v2/list_movies.json?page=$page&minimum_rating=$rating';

    if (quality != null) {
      url += '&quality=$quality';
    }

    final Response response = await _client.get(url);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body)['data']['movies'];
    return list //
        .map((dynamic json) => Movie.fromJson(json))
        .toList();
  }
}
