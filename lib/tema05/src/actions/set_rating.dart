library set_rating;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_rating.freezed.dart';

@freezed
abstract class SetRating with _$SetRating {
  const factory SetRating(int rating) = _SetRating;
}
