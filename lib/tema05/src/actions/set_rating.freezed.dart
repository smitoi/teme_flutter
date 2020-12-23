// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_rating;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetRatingTearOff {
  const _$SetRatingTearOff();

// ignore: unused_element
  _SetRating call(int rating) {
    return _SetRating(
      rating,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetRating = _$SetRatingTearOff();

/// @nodoc
mixin _$SetRating {
  int get rating;

  $SetRatingCopyWith<SetRating> get copyWith;
}

/// @nodoc
abstract class $SetRatingCopyWith<$Res> {
  factory $SetRatingCopyWith(SetRating value, $Res Function(SetRating) then) = _$SetRatingCopyWithImpl<$Res>;

  $Res call({int rating});
}

/// @nodoc
class _$SetRatingCopyWithImpl<$Res> implements $SetRatingCopyWith<$Res> {
  _$SetRatingCopyWithImpl(this._value, this._then);

  final SetRating _value;

  // ignore: unused_field
  final $Res Function(SetRating) _then;

  @override
  $Res call({
    Object rating = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed ? _value.rating : rating as int,
    ));
  }
}

/// @nodoc
abstract class _$SetRatingCopyWith<$Res> implements $SetRatingCopyWith<$Res> {
  factory _$SetRatingCopyWith(_SetRating value, $Res Function(_SetRating) then) = __$SetRatingCopyWithImpl<$Res>;

  @override
  $Res call({int rating});
}

/// @nodoc
class __$SetRatingCopyWithImpl<$Res> extends _$SetRatingCopyWithImpl<$Res> implements _$SetRatingCopyWith<$Res> {
  __$SetRatingCopyWithImpl(_SetRating _value, $Res Function(_SetRating) _then)
      : super(_value, (v) => _then(v as _SetRating));

  @override
  _SetRating get _value => super._value as _SetRating;

  @override
  $Res call({
    Object rating = freezed,
  }) {
    return _then(_SetRating(
      rating == freezed ? _value.rating : rating as int,
    ));
  }
}

/// @nodoc
class _$_SetRating implements _SetRating {
  const _$_SetRating(this.rating) : assert(rating != null);

  @override
  final int rating;

  @override
  String toString() {
    return 'SetRating(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetRating &&
            (identical(other.rating, rating) || const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rating);

  @override
  _$SetRatingCopyWith<_SetRating> get copyWith => __$SetRatingCopyWithImpl<_SetRating>(this, _$identity);
}

abstract class _SetRating implements SetRating {
  const factory _SetRating(int rating) = _$_SetRating;

  @override
  int get rating;

  @override
  _$SetRatingCopyWith<_SetRating> get copyWith;
}
