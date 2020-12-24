// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movies;
  @override
  final int page;
  @override
  final bool isLoading;
  @override
  final int rating;
  @override
  final String quality;
  @override
  final int selected;
  @override
  final String query;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.movies, this.page, this.isLoading, this.rating, this.quality, this.selected, this.query})
      : super._() {
    if (movies == null) {
      throw new BuiltValueNullFieldError('AppState', 'movies');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('AppState', 'rating');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movies == other.movies &&
        page == other.page &&
        isLoading == other.isLoading &&
        rating == other.rating &&
        quality == other.quality &&
        selected == other.selected &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc($jc(0, movies.hashCode), page.hashCode), isLoading.hashCode), rating.hashCode),
                quality.hashCode),
            selected.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movies', movies)
          ..add('page', page)
          ..add('isLoading', isLoading)
          ..add('rating', rating)
          ..add('quality', quality)
          ..add('selected', selected)
          ..add('query', query))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Movie> _movies;

  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();

  set movies(ListBuilder<Movie> movies) => _$this._movies = movies;

  int _page;

  int get page => _$this._page;

  set page(int page) => _$this._page = page;

  bool _isLoading;

  bool get isLoading => _$this._isLoading;

  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _rating;

  int get rating => _$this._rating;

  set rating(int rating) => _$this._rating = rating;

  String _quality;

  String get quality => _$this._quality;

  set quality(String quality) => _$this._quality = quality;

  int _selected;

  int get selected => _$this._selected;

  set selected(int selected) => _$this._selected = selected;

  String _query;

  String get query => _$this._query;

  set query(String query) => _$this._query = query;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _movies = _$v.movies?.toBuilder();
      _page = _$v.page;
      _isLoading = _$v.isLoading;
      _rating = _$v.rating;
      _quality = _$v.quality;
      _selected = _$v.selected;
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              movies: movies.build(),
              page: page,
              isLoading: isLoading,
              rating: rating,
              quality: quality,
              selected: selected,
              query: query);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
