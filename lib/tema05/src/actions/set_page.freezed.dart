// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_page;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetPageTearOff {
  const _$SetPageTearOff();

// ignore: unused_element
  _SetPage call(int page) {
    return _SetPage(
      page,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetPage = _$SetPageTearOff();

/// @nodoc
mixin _$SetPage {
  int get page;

  $SetPageCopyWith<SetPage> get copyWith;
}

/// @nodoc
abstract class $SetPageCopyWith<$Res> {
  factory $SetPageCopyWith(SetPage value, $Res Function(SetPage) then) = _$SetPageCopyWithImpl<$Res>;

  $Res call({int page});
}

/// @nodoc
class _$SetPageCopyWithImpl<$Res> implements $SetPageCopyWith<$Res> {
  _$SetPageCopyWithImpl(this._value, this._then);

  final SetPage _value;

  // ignore: unused_field
  final $Res Function(SetPage) _then;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
abstract class _$SetPageCopyWith<$Res> implements $SetPageCopyWith<$Res> {
  factory _$SetPageCopyWith(_SetPage value, $Res Function(_SetPage) then) = __$SetPageCopyWithImpl<$Res>;

  @override
  $Res call({int page});
}

/// @nodoc
class __$SetPageCopyWithImpl<$Res> extends _$SetPageCopyWithImpl<$Res> implements _$SetPageCopyWith<$Res> {
  __$SetPageCopyWithImpl(_SetPage _value, $Res Function(_SetPage) _then) : super(_value, (v) => _then(v as _SetPage));

  @override
  _SetPage get _value => super._value as _SetPage;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_SetPage(
      page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$_SetPage implements _SetPage {
  const _$_SetPage(this.page) : assert(page != null);

  @override
  final int page;

  @override
  String toString() {
    return 'SetPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPage && (identical(other.page, page) || const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  _$SetPageCopyWith<_SetPage> get copyWith => __$SetPageCopyWithImpl<_SetPage>(this, _$identity);
}

abstract class _SetPage implements SetPage {
  const factory _SetPage(int page) = _$_SetPage;

  @override
  int get page;

  @override
  _$SetPageCopyWith<_SetPage> get copyWith;
}
