library set_page;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_page.freezed.dart';

@freezed
abstract class SetPage with _$SetPage {
  const factory SetPage(int page) = _SetPage;
}
