library set_selected;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_selected.freezed.dart';

@freezed
abstract class SetSelected with _$SetSelected {
  const factory SetSelected(int selected) = _SetSelected;
}
