// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of get_next_page;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetNextPageTearOff {
  const _$GetNextPageTearOff();

// ignore: unused_element
  GetNextPageStart call() {
    return const GetNextPageStart();
  }

// ignore: unused_element
  GetNextPageSuccessful successful(List<Movie> movies) {
    return GetNextPageSuccessful(
      movies,
    );
  }

// ignore: unused_element
  GetNextPageError error(dynamic error) {
    return GetNextPageError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetNextPage = _$GetNextPageTearOff();

/// @nodoc
mixin _$GetNextPage {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetNextPageStart value), {
    @required Result successful(GetNextPageSuccessful value),
    @required Result error(GetNextPageError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetNextPageStart value), {
    Result successful(GetNextPageSuccessful value),
    Result error(GetNextPageError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetNextPageCopyWith<$Res> {
  factory $GetNextPageCopyWith(GetNextPage value, $Res Function(GetNextPage) then) = _$GetNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNextPageCopyWithImpl<$Res> implements $GetNextPageCopyWith<$Res> {
  _$GetNextPageCopyWithImpl(this._value, this._then);

  final GetNextPage _value;

  // ignore: unused_field
  final $Res Function(GetNextPage) _then;
}

/// @nodoc
abstract class $GetNextPageStartCopyWith<$Res> {
  factory $GetNextPageStartCopyWith(GetNextPageStart value, $Res Function(GetNextPageStart) then) =
      _$GetNextPageStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNextPageStartCopyWithImpl<$Res> extends _$GetNextPageCopyWithImpl<$Res>
    implements $GetNextPageStartCopyWith<$Res> {
  _$GetNextPageStartCopyWithImpl(GetNextPageStart _value, $Res Function(GetNextPageStart) _then)
      : super(_value, (v) => _then(v as GetNextPageStart));

  @override
  GetNextPageStart get _value => super._value as GetNextPageStart;
}

/// @nodoc
class _$GetNextPageStart implements GetNextPageStart {
  const _$GetNextPageStart();

  @override
  String toString() {
    return 'GetNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetNextPageStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
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
    Result successful(List<Movie> movies),
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
    Result $default(GetNextPageStart value), {
    @required Result successful(GetNextPageSuccessful value),
    @required Result error(GetNextPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetNextPageStart value), {
    Result successful(GetNextPageSuccessful value),
    Result error(GetNextPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetNextPageStart implements GetNextPage {
  const factory GetNextPageStart() = _$GetNextPageStart;
}

/// @nodoc
abstract class $GetNextPageSuccessfulCopyWith<$Res> {
  factory $GetNextPageSuccessfulCopyWith(GetNextPageSuccessful value, $Res Function(GetNextPageSuccessful) then) =
      _$GetNextPageSuccessfulCopyWithImpl<$Res>;

  $Res call({List<Movie> movies});
}

/// @nodoc
class _$GetNextPageSuccessfulCopyWithImpl<$Res> extends _$GetNextPageCopyWithImpl<$Res>
    implements $GetNextPageSuccessfulCopyWith<$Res> {
  _$GetNextPageSuccessfulCopyWithImpl(GetNextPageSuccessful _value, $Res Function(GetNextPageSuccessful) _then)
      : super(_value, (v) => _then(v as GetNextPageSuccessful));

  @override
  GetNextPageSuccessful get _value => super._value as GetNextPageSuccessful;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(GetNextPageSuccessful(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$GetNextPageSuccessful implements GetNextPageSuccessful {
  const _$GetNextPageSuccessful(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'GetNextPage.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNextPageSuccessful &&
            (identical(other.movies, movies) || const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @override
  $GetNextPageSuccessfulCopyWith<GetNextPageSuccessful> get copyWith =>
      _$GetNextPageSuccessfulCopyWithImpl<GetNextPageSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetNextPageStart value), {
    @required Result successful(GetNextPageSuccessful value),
    @required Result error(GetNextPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetNextPageStart value), {
    Result successful(GetNextPageSuccessful value),
    Result error(GetNextPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetNextPageSuccessful implements GetNextPage {
  const factory GetNextPageSuccessful(List<Movie> movies) = _$GetNextPageSuccessful;

  List<Movie> get movies;

  $GetNextPageSuccessfulCopyWith<GetNextPageSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetNextPageErrorCopyWith<$Res> {
  factory $GetNextPageErrorCopyWith(GetNextPageError value, $Res Function(GetNextPageError) then) =
      _$GetNextPageErrorCopyWithImpl<$Res>;

  $Res call({dynamic error});
}

/// @nodoc
class _$GetNextPageErrorCopyWithImpl<$Res> extends _$GetNextPageCopyWithImpl<$Res>
    implements $GetNextPageErrorCopyWith<$Res> {
  _$GetNextPageErrorCopyWithImpl(GetNextPageError _value, $Res Function(GetNextPageError) _then)
      : super(_value, (v) => _then(v as GetNextPageError));

  @override
  GetNextPageError get _value => super._value as GetNextPageError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetNextPageError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetNextPageError implements GetNextPageError {
  const _$GetNextPageError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetNextPage.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNextPageError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetNextPageErrorCopyWith<GetNextPageError> get copyWith =>
      _$GetNextPageErrorCopyWithImpl<GetNextPageError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
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
    Result successful(List<Movie> movies),
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
    Result $default(GetNextPageStart value), {
    @required Result successful(GetNextPageSuccessful value),
    @required Result error(GetNextPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetNextPageStart value), {
    Result successful(GetNextPageSuccessful value),
    Result error(GetNextPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetNextPageError implements GetNextPage {
  const factory GetNextPageError(dynamic error) = _$GetNextPageError;

  dynamic get error;

  $GetNextPageErrorCopyWith<GetNextPageError> get copyWith;
}
