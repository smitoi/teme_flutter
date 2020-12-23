// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_selected;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetSelectedTearOff {
  const _$SetSelectedTearOff();

// ignore: unused_element
  _SetSelected call(int selected) {
    return _SetSelected(
      selected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetSelected = _$SetSelectedTearOff();

/// @nodoc
mixin _$SetSelected {
  int get selected;

  $SetSelectedCopyWith<SetSelected> get copyWith;
}

/// @nodoc
abstract class $SetSelectedCopyWith<$Res> {
  factory $SetSelectedCopyWith(SetSelected value, $Res Function(SetSelected) then) = _$SetSelectedCopyWithImpl<$Res>;

  $Res call({int selected});
}

/// @nodoc
class _$SetSelectedCopyWithImpl<$Res> implements $SetSelectedCopyWith<$Res> {
  _$SetSelectedCopyWithImpl(this._value, this._then);

  final SetSelected _value;

  // ignore: unused_field
  final $Res Function(SetSelected) _then;

  @override
  $Res call({
    Object selected = freezed,
  }) {
    return _then(_value.copyWith(
      selected: selected == freezed ? _value.selected : selected as int,
    ));
  }
}

/// @nodoc
abstract class _$SetSelectedCopyWith<$Res> implements $SetSelectedCopyWith<$Res> {
  factory _$SetSelectedCopyWith(_SetSelected value, $Res Function(_SetSelected) then) =
      __$SetSelectedCopyWithImpl<$Res>;

  @override
  $Res call({int selected});
}

/// @nodoc
class __$SetSelectedCopyWithImpl<$Res> extends _$SetSelectedCopyWithImpl<$Res> implements _$SetSelectedCopyWith<$Res> {
  __$SetSelectedCopyWithImpl(_SetSelected _value, $Res Function(_SetSelected) _then)
      : super(_value, (v) => _then(v as _SetSelected));

  @override
  _SetSelected get _value => super._value as _SetSelected;

  @override
  $Res call({
    Object selected = freezed,
  }) {
    return _then(_SetSelected(
      selected == freezed ? _value.selected : selected as int,
    ));
  }
}

/// @nodoc
class _$_SetSelected implements _SetSelected {
  const _$_SetSelected(this.selected) : assert(selected != null);

  @override
  final int selected;

  @override
  String toString() {
    return 'SetSelected(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSelected &&
            (identical(other.selected, selected) || const DeepCollectionEquality().equals(other.selected, selected)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(selected);

  @override
  _$SetSelectedCopyWith<_SetSelected> get copyWith => __$SetSelectedCopyWithImpl<_SetSelected>(this, _$identity);
}

abstract class _SetSelected implements SetSelected {
  const factory _SetSelected(int selected) = _$_SetSelected;

  @override
  int get selected;

  @override
  _$SetSelectedCopyWith<_SetSelected> get copyWith;
}
