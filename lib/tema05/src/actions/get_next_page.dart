import '../models/movie.dart';

class GetNextPage {
  const GetNextPage();
}

class GetNextPageSuccessful {
  const GetNextPageSuccessful(this.movies);

  final List<Movie> movies;
}

class GetNextPageError {
  const GetNextPageError(this.error);

  final dynamic error;
}
