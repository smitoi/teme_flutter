library void_action;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'void_action.freezed.dart';

@freezed
abstract class VoidAction with _$VoidAction {
  const factory VoidAction() = _VoidAction;
}
