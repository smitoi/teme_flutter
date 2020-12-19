import '../models/movie.dart';

class GetPreviousPage {
  const GetPreviousPage();
}

class GetPreviousPageSuccessful {
  const GetPreviousPageSuccessful(this.movies);

  final List<Movie> movies;
}

class GetPreviousPageError {
  const GetPreviousPageError(this.error);

  final dynamic error;
}
