// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object> serialize(Serializers serializers, Movie object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title, specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(num)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres, specifiedType: const FullType(BuiltList, const [const FullType(String)])),
      'summary',
      serializers.serialize(object.summary, specifiedType: const FullType(String)),
      'background_image',
      serializers.serialize(object.backgroundImage, specifiedType: const FullType(String)),
      'medium_cover_image',
      serializers.serialize(object.mediumCoverImage, specifiedType: const FullType(String)),
      'large_cover_image',
      serializers.serialize(object.largeCoverImage, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(String)])) as BuiltList<Object>);
          break;
        case 'summary':
          result.summary = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'background_image':
          result.backgroundImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'medium_cover_image':
          result.mediumCoverImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'large_cover_image':
          result.largeCoverImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final int id;
  @override
  final String title;
  @override
  final int year;
  @override
  final num rating;
  @override
  final int runtime;
  @override
  final BuiltList<String> genres;
  @override
  final String summary;
  @override
  final String backgroundImage;
  @override
  final String mediumCoverImage;
  @override
  final String largeCoverImage;
  @override
  final String url;

  factory _$Movie([void Function(MovieBuilder) updates]) => (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.title,
      this.year,
      this.rating,
      this.runtime,
      this.genres,
      this.summary,
      this.backgroundImage,
      this.mediumCoverImage,
      this.largeCoverImage,
      this.url})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Movie', 'year');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('Movie', 'rating');
    }
    if (runtime == null) {
      throw new BuiltValueNullFieldError('Movie', 'runtime');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('Movie', 'genres');
    }
    if (summary == null) {
      throw new BuiltValueNullFieldError('Movie', 'summary');
    }
    if (backgroundImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'backgroundImage');
    }
    if (mediumCoverImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'mediumCoverImage');
    }
    if (largeCoverImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'largeCoverImage');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Movie', 'url');
    }
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        title == other.title &&
        year == other.year &&
        rating == other.rating &&
        runtime == other.runtime &&
        genres == other.genres &&
        summary == other.summary &&
        backgroundImage == other.backgroundImage &&
        mediumCoverImage == other.mediumCoverImage &&
        largeCoverImage == other.largeCoverImage &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc($jc($jc(0, id.hashCode), title.hashCode), year.hashCode), rating.hashCode),
                                runtime.hashCode),
                            genres.hashCode),
                        summary.hashCode),
                    backgroundImage.hashCode),
                mediumCoverImage.hashCode),
            largeCoverImage.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('title', title)
          ..add('year', year)
          ..add('rating', rating)
          ..add('runtime', runtime)
          ..add('genres', genres)
          ..add('summary', summary)
          ..add('backgroundImage', backgroundImage)
          ..add('mediumCoverImage', mediumCoverImage)
          ..add('largeCoverImage', largeCoverImage)
          ..add('url', url))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  int _year;

  int get year => _$this._year;

  set year(int year) => _$this._year = year;

  num _rating;

  num get rating => _$this._rating;

  set rating(num rating) => _$this._rating = rating;

  int _runtime;

  int get runtime => _$this._runtime;

  set runtime(int runtime) => _$this._runtime = runtime;

  ListBuilder<String> _genres;

  ListBuilder<String> get genres => _$this._genres ??= new ListBuilder<String>();

  set genres(ListBuilder<String> genres) => _$this._genres = genres;

  String _summary;

  String get summary => _$this._summary;

  set summary(String summary) => _$this._summary = summary;

  String _backgroundImage;

  String get backgroundImage => _$this._backgroundImage;

  set backgroundImage(String backgroundImage) => _$this._backgroundImage = backgroundImage;

  String _mediumCoverImage;

  String get mediumCoverImage => _$this._mediumCoverImage;

  set mediumCoverImage(String mediumCoverImage) => _$this._mediumCoverImage = mediumCoverImage;

  String _largeCoverImage;

  String get largeCoverImage => _$this._largeCoverImage;

  set largeCoverImage(String largeCoverImage) => _$this._largeCoverImage = largeCoverImage;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _year = _$v.year;
      _rating = _$v.rating;
      _runtime = _$v.runtime;
      _genres = _$v.genres?.toBuilder();
      _summary = _$v.summary;
      _backgroundImage = _$v.backgroundImage;
      _mediumCoverImage = _$v.mediumCoverImage;
      _largeCoverImage = _$v.largeCoverImage;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              id: id,
              title: title,
              year: year,
              rating: rating,
              runtime: runtime,
              genres: genres.build(),
              summary: summary,
              backgroundImage: backgroundImage,
              mediumCoverImage: mediumCoverImage,
              largeCoverImage: largeCoverImage,
              url: url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
