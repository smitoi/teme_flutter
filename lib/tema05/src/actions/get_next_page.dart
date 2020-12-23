library get_next_page;

import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/movie.dart';

part 'get_next_page.freezed.dart';

@freezed
abstract class GetNextPage with _$GetNextPage {
  const factory GetNextPage() = GetNextPageStart;

  const factory GetNextPage.successful(List<Movie> movies) = GetNextPageSuccessful;

  const factory GetNextPage.error(dynamic error) = GetNextPageError;
}
