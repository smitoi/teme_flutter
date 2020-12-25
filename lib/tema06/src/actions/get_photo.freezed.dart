// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of get_photo;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetPhotoTearOff {
  const _$GetPhotoTearOff();

// ignore: unused_element
  GetPhotoStart call() {
    return const GetPhotoStart();
  }

// ignore: unused_element
  GetPhotoSuccessful successful(PhotoBuilder photo) {
    return GetPhotoSuccessful(
      photo,
    );
  }

// ignore: unused_element
  GetPhotoError error(dynamic error) {
    return GetPhotoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPhoto = _$GetPhotoTearOff();

/// @nodoc
mixin _$GetPhoto {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(PhotoBuilder photo),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(PhotoBuilder photo),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotoStart value), {
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotoStart value), {
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPhotoCopyWith<$Res> {
  factory $GetPhotoCopyWith(GetPhoto value, $Res Function(GetPhoto) then) =
      _$GetPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotoCopyWithImpl<$Res> implements $GetPhotoCopyWith<$Res> {
  _$GetPhotoCopyWithImpl(this._value, this._then);

  final GetPhoto _value;
  // ignore: unused_field
  final $Res Function(GetPhoto) _then;
}

/// @nodoc
abstract class $GetPhotoStartCopyWith<$Res> {
  factory $GetPhotoStartCopyWith(
          GetPhotoStart value, $Res Function(GetPhotoStart) then) =
      _$GetPhotoStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotoStartCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoStartCopyWith<$Res> {
  _$GetPhotoStartCopyWithImpl(
      GetPhotoStart _value, $Res Function(GetPhotoStart) _then)
      : super(_value, (v) => _then(v as GetPhotoStart));

  @override
  GetPhotoStart get _value => super._value as GetPhotoStart;
}

/// @nodoc
class _$GetPhotoStart implements GetPhotoStart {
  const _$GetPhotoStart();

  @override
  String toString() {
    return 'GetPhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPhotoStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(PhotoBuilder photo),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(PhotoBuilder photo),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotoStart value), {
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotoStart value), {
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotoStart implements GetPhoto {
  const factory GetPhotoStart() = _$GetPhotoStart;
}

/// @nodoc
abstract class $GetPhotoSuccessfulCopyWith<$Res> {
  factory $GetPhotoSuccessfulCopyWith(
          GetPhotoSuccessful value, $Res Function(GetPhotoSuccessful) then) =
      _$GetPhotoSuccessfulCopyWithImpl<$Res>;
  $Res call({PhotoBuilder photo});
}

/// @nodoc
class _$GetPhotoSuccessfulCopyWithImpl<$Res>
    extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoSuccessfulCopyWith<$Res> {
  _$GetPhotoSuccessfulCopyWithImpl(
      GetPhotoSuccessful _value, $Res Function(GetPhotoSuccessful) _then)
      : super(_value, (v) => _then(v as GetPhotoSuccessful));

  @override
  GetPhotoSuccessful get _value => super._value as GetPhotoSuccessful;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(GetPhotoSuccessful(
      photo == freezed ? _value.photo : photo as PhotoBuilder,
    ));
  }
}

/// @nodoc
class _$GetPhotoSuccessful implements GetPhotoSuccessful {
  const _$GetPhotoSuccessful(this.photo) : assert(photo != null);

  @override
  final PhotoBuilder photo;

  @override
  String toString() {
    return 'GetPhoto.successful(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoSuccessful &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @override
  $GetPhotoSuccessfulCopyWith<GetPhotoSuccessful> get copyWith =>
      _$GetPhotoSuccessfulCopyWithImpl<GetPhotoSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(PhotoBuilder photo),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(photo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(PhotoBuilder photo),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotoStart value), {
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotoStart value), {
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotoSuccessful implements GetPhoto {
  const factory GetPhotoSuccessful(PhotoBuilder photo) = _$GetPhotoSuccessful;

  PhotoBuilder get photo;
  $GetPhotoSuccessfulCopyWith<GetPhotoSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPhotoErrorCopyWith<$Res> {
  factory $GetPhotoErrorCopyWith(
          GetPhotoError value, $Res Function(GetPhotoError) then) =
      _$GetPhotoErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetPhotoErrorCopyWithImpl<$Res> extends _$GetPhotoCopyWithImpl<$Res>
    implements $GetPhotoErrorCopyWith<$Res> {
  _$GetPhotoErrorCopyWithImpl(
      GetPhotoError _value, $Res Function(GetPhotoError) _then)
      : super(_value, (v) => _then(v as GetPhotoError));

  @override
  GetPhotoError get _value => super._value as GetPhotoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPhotoError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPhotoError implements GetPhotoError {
  const _$GetPhotoError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPhoto.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPhotoErrorCopyWith<GetPhotoError> get copyWith =>
      _$GetPhotoErrorCopyWithImpl<GetPhotoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(PhotoBuilder photo),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(PhotoBuilder photo),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotoStart value), {
    @required Result successful(GetPhotoSuccessful value),
    @required Result error(GetPhotoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotoStart value), {
    Result successful(GetPhotoSuccessful value),
    Result error(GetPhotoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotoError implements GetPhoto {
  const factory GetPhotoError(dynamic error) = _$GetPhotoError;

  dynamic get error;
  $GetPhotoErrorCopyWith<GetPhotoError> get copyWith;
}
