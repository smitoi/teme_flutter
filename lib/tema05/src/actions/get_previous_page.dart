library get_previous_page;

import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/movie.dart';

part 'get_previous_page.freezed.dart';

@freezed
abstract class GetPreviousPage with _$GetPreviousPage {
  const factory GetPreviousPage() = GetPreviousPageStart;

  const factory GetPreviousPage.successful(List<Movie> movies) = GetPreviousPageSuccessful;

  const factory GetPreviousPage.error(dynamic error) = GetPreviousPageError;
}
