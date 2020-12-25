// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of add_liked_photo;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddLikedPhotoTearOff {
  const _$AddLikedPhotoTearOff();

// ignore: unused_element
  _AddLikedPhoto call(Photo photo) {
    return _AddLikedPhoto(
      photo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddLikedPhoto = _$AddLikedPhotoTearOff();

/// @nodoc
mixin _$AddLikedPhoto {
  Photo get photo;

  $AddLikedPhotoCopyWith<AddLikedPhoto> get copyWith;
}

/// @nodoc
abstract class $AddLikedPhotoCopyWith<$Res> {
  factory $AddLikedPhotoCopyWith(
          AddLikedPhoto value, $Res Function(AddLikedPhoto) then) =
      _$AddLikedPhotoCopyWithImpl<$Res>;
  $Res call({Photo photo});
}

/// @nodoc
class _$AddLikedPhotoCopyWithImpl<$Res>
    implements $AddLikedPhotoCopyWith<$Res> {
  _$AddLikedPhotoCopyWithImpl(this._value, this._then);

  final AddLikedPhoto _value;
  // ignore: unused_field
  final $Res Function(AddLikedPhoto) _then;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(_value.copyWith(
      photo: photo == freezed ? _value.photo : photo as Photo,
    ));
  }
}

/// @nodoc
abstract class _$AddLikedPhotoCopyWith<$Res>
    implements $AddLikedPhotoCopyWith<$Res> {
  factory _$AddLikedPhotoCopyWith(
          _AddLikedPhoto value, $Res Function(_AddLikedPhoto) then) =
      __$AddLikedPhotoCopyWithImpl<$Res>;
  @override
  $Res call({Photo photo});
}

/// @nodoc
class __$AddLikedPhotoCopyWithImpl<$Res>
    extends _$AddLikedPhotoCopyWithImpl<$Res>
    implements _$AddLikedPhotoCopyWith<$Res> {
  __$AddLikedPhotoCopyWithImpl(
      _AddLikedPhoto _value, $Res Function(_AddLikedPhoto) _then)
      : super(_value, (v) => _then(v as _AddLikedPhoto));

  @override
  _AddLikedPhoto get _value => super._value as _AddLikedPhoto;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(_AddLikedPhoto(
      photo == freezed ? _value.photo : photo as Photo,
    ));
  }
}

/// @nodoc
class _$_AddLikedPhoto implements _AddLikedPhoto {
  const _$_AddLikedPhoto(this.photo) : assert(photo != null);

  @override
  final Photo photo;

  @override
  String toString() {
    return 'AddLikedPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddLikedPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @override
  _$AddLikedPhotoCopyWith<_AddLikedPhoto> get copyWith =>
      __$AddLikedPhotoCopyWithImpl<_AddLikedPhoto>(this, _$identity);
}

abstract class _AddLikedPhoto implements AddLikedPhoto {
  const factory _AddLikedPhoto(Photo photo) = _$_AddLikedPhoto;

  @override
  Photo get photo;
  @override
  _$AddLikedPhotoCopyWith<_AddLikedPhoto> get copyWith;
}
