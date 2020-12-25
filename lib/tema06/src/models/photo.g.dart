// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType: const FullType(PhotoUrls)),
    ];

    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(PhotoUrls)) as PhotoUrls);
          break;
      }
    }

    return result.build();
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final String color;
  @override
  final int width;
  @override
  final int height;
  @override
  final PhotoUrls urls;

  factory _$Photo([void Function(PhotoBuilder) updates]) =>
      (new PhotoBuilder()..update(updates)).build();

  _$Photo._({this.id, this.color, this.width, this.height, this.urls})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Photo', 'id');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('Photo', 'color');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('Photo', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('Photo', 'height');
    }
    if (urls == null) {
      throw new BuiltValueNullFieldError('Photo', 'urls');
    }
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        color == other.color &&
        width == other.width &&
        height == other.height &&
        urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), color.hashCode), width.hashCode),
            height.hashCode),
        urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('color', color)
          ..add('width', width)
          ..add('height', height)
          ..add('urls', urls))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  PhotoUrlsBuilder _urls;
  PhotoUrlsBuilder get urls => _$this._urls ??= new PhotoUrlsBuilder();
  set urls(PhotoUrlsBuilder urls) => _$this._urls = urls;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _color = _$v.color;
      _width = _$v.width;
      _height = _$v.height;
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: id,
              color: color,
              width: width,
              height: height,
              urls: urls.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
