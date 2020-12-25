// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final bool isLoading;
  @override
  final Photo photo;
  @override
  final String orientation;
  @override
  final String query;
  @override
  final String username;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.isLoading, this.photo, this.orientation, this.query, this.username})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        isLoading == other.isLoading &&
        photo == other.photo &&
        orientation == other.orientation &&
        query == other.query &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), photo.hashCode),
                orientation.hashCode),
            query.hashCode),
        username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('isLoading', isLoading)
          ..add('photo', photo)
          ..add('orientation', orientation)
          ..add('query', query)
          ..add('username', username))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  PhotoBuilder _photo;
  PhotoBuilder get photo => _$this._photo ??= new PhotoBuilder();
  set photo(PhotoBuilder photo) => _$this._photo = photo;

  String _orientation;
  String get orientation => _$this._orientation;
  set orientation(String orientation) => _$this._orientation = orientation;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _photo = _$v.photo?.toBuilder();
      _orientation = _$v.orientation;
      _query = _$v.query;
      _username = _$v.username;
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
              isLoading: isLoading,
              photo: _photo?.build(),
              orientation: orientation,
              query: query,
              username: username);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photo';
        _photo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
