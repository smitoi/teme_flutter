// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of get_previous_page;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetPreviousPageTearOff {
  const _$GetPreviousPageTearOff();

// ignore: unused_element
  GetPreviousPageStart call() {
    return const GetPreviousPageStart();
  }

// ignore: unused_element
  GetPreviousPageSuccessful successful(List<Movie> movies) {
    return GetPreviousPageSuccessful(
      movies,
    );
  }

// ignore: unused_element
  GetPreviousPageError error(dynamic error) {
    return GetPreviousPageError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPreviousPage = _$GetPreviousPageTearOff();

/// @nodoc
mixin _$GetPreviousPage {
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
    Result $default(GetPreviousPageStart value), {
    @required Result successful(GetPreviousPageSuccessful value),
    @required Result error(GetPreviousPageError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPreviousPageStart value), {
    Result successful(GetPreviousPageSuccessful value),
    Result error(GetPreviousPageError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPreviousPageCopyWith<$Res> {
  factory $GetPreviousPageCopyWith(GetPreviousPage value, $Res Function(GetPreviousPage) then) =
      _$GetPreviousPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPreviousPageCopyWithImpl<$Res> implements $GetPreviousPageCopyWith<$Res> {
  _$GetPreviousPageCopyWithImpl(this._value, this._then);

  final GetPreviousPage _value;

  // ignore: unused_field
  final $Res Function(GetPreviousPage) _then;
}

/// @nodoc
abstract class $GetPreviousPageStartCopyWith<$Res> {
  factory $GetPreviousPageStartCopyWith(GetPreviousPageStart value, $Res Function(GetPreviousPageStart) then) =
      _$GetPreviousPageStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPreviousPageStartCopyWithImpl<$Res> extends _$GetPreviousPageCopyWithImpl<$Res>
    implements $GetPreviousPageStartCopyWith<$Res> {
  _$GetPreviousPageStartCopyWithImpl(GetPreviousPageStart _value, $Res Function(GetPreviousPageStart) _then)
      : super(_value, (v) => _then(v as GetPreviousPageStart));

  @override
  GetPreviousPageStart get _value => super._value as GetPreviousPageStart;
}

/// @nodoc
class _$GetPreviousPageStart implements GetPreviousPageStart {
  const _$GetPreviousPageStart();

  @override
  String toString() {
    return 'GetPreviousPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPreviousPageStart);
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
    Result $default(GetPreviousPageStart value), {
    @required Result successful(GetPreviousPageSuccessful value),
    @required Result error(GetPreviousPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPreviousPageStart value), {
    Result successful(GetPreviousPageSuccessful value),
    Result error(GetPreviousPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPreviousPageStart implements GetPreviousPage {
  const factory GetPreviousPageStart() = _$GetPreviousPageStart;
}

/// @nodoc
abstract class $GetPreviousPageSuccessfulCopyWith<$Res> {
  factory $GetPreviousPageSuccessfulCopyWith(
          GetPreviousPageSuccessful value, $Res Function(GetPreviousPageSuccessful) then) =
      _$GetPreviousPageSuccessfulCopyWithImpl<$Res>;

  $Res call({List<Movie> movies});
}

/// @nodoc
class _$GetPreviousPageSuccessfulCopyWithImpl<$Res> extends _$GetPreviousPageCopyWithImpl<$Res>
    implements $GetPreviousPageSuccessfulCopyWith<$Res> {
  _$GetPreviousPageSuccessfulCopyWithImpl(
      GetPreviousPageSuccessful _value, $Res Function(GetPreviousPageSuccessful) _then)
      : super(_value, (v) => _then(v as GetPreviousPageSuccessful));

  @override
  GetPreviousPageSuccessful get _value => super._value as GetPreviousPageSuccessful;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(GetPreviousPageSuccessful(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$GetPreviousPageSuccessful implements GetPreviousPageSuccessful {
  const _$GetPreviousPageSuccessful(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'GetPreviousPage.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPreviousPageSuccessful &&
            (identical(other.movies, movies) || const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @override
  $GetPreviousPageSuccessfulCopyWith<GetPreviousPageSuccessful> get copyWith =>
      _$GetPreviousPageSuccessfulCopyWithImpl<GetPreviousPageSuccessful>(this, _$identity);

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
    Result $default(GetPreviousPageStart value), {
    @required Result successful(GetPreviousPageSuccessful value),
    @required Result error(GetPreviousPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPreviousPageStart value), {
    Result successful(GetPreviousPageSuccessful value),
    Result error(GetPreviousPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPreviousPageSuccessful implements GetPreviousPage {
  const factory GetPreviousPageSuccessful(List<Movie> movies) = _$GetPreviousPageSuccessful;

  List<Movie> get movies;

  $GetPreviousPageSuccessfulCopyWith<GetPreviousPageSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPreviousPageErrorCopyWith<$Res> {
  factory $GetPreviousPageErrorCopyWith(GetPreviousPageError value, $Res Function(GetPreviousPageError) then) =
      _$GetPreviousPageErrorCopyWithImpl<$Res>;

  $Res call({dynamic error});
}

/// @nodoc
class _$GetPreviousPageErrorCopyWithImpl<$Res> extends _$GetPreviousPageCopyWithImpl<$Res>
    implements $GetPreviousPageErrorCopyWith<$Res> {
  _$GetPreviousPageErrorCopyWithImpl(GetPreviousPageError _value, $Res Function(GetPreviousPageError) _then)
      : super(_value, (v) => _then(v as GetPreviousPageError));

  @override
  GetPreviousPageError get _value => super._value as GetPreviousPageError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPreviousPageError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPreviousPageError implements GetPreviousPageError {
  const _$GetPreviousPageError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPreviousPage.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPreviousPageError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPreviousPageErrorCopyWith<GetPreviousPageError> get copyWith =>
      _$GetPreviousPageErrorCopyWithImpl<GetPreviousPageError>(this, _$identity);

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
    Result $default(GetPreviousPageStart value), {
    @required Result successful(GetPreviousPageSuccessful value),
    @required Result error(GetPreviousPageError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPreviousPageStart value), {
    Result successful(GetPreviousPageSuccessful value),
    Result error(GetPreviousPageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPreviousPageError implements GetPreviousPage {
  const factory GetPreviousPageError(dynamic error) = _$GetPreviousPageError;

  dynamic get error;

  $GetPreviousPageErrorCopyWith<GetPreviousPageError> get copyWith;
}
