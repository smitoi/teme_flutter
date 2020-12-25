import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart';
import '../models/photo.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  static const String _clientId = 'EdE5jfXo5IvC9gklmTkTKeYZ5qjla3hnDGnr94_PXkk';
  final Client _client;

  Future<PhotoBuilder> getPhoto(String username) async {
    String url =
        'https://api.unsplash.com/photos/random/?orientation=portrait&client_id=$_clientId';

    if (username != null) {
      url += '&username=$username';
    }

    print('URL = $url');
    final Response response = await _client.get(url);
    final String body = response.body;
    final dynamic json = jsonDecode(body);
    return Photo.fromJson(json).toBuilder();
  }
}
