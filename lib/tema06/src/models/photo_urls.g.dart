// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo_urls;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhotoUrls> _$photoUrlsSerializer = new _$PhotoUrlsSerializer();

class _$PhotoUrlsSerializer implements StructuredSerializer<PhotoUrls> {
  @override
  final Iterable<Type> types = const [PhotoUrls, _$PhotoUrls];
  @override
  final String wireName = 'PhotoUrls';

  @override
  Iterable<Object> serialize(Serializers serializers, PhotoUrls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'full',
      serializers.serialize(object.fullSizeUrl,
          specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.smallSizeUrl,
          specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumbSizeUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PhotoUrls deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoUrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'full':
          result.fullSizeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.smallSizeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumbSizeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoUrls extends PhotoUrls {
  @override
  final String fullSizeUrl;
  @override
  final String smallSizeUrl;
  @override
  final String thumbSizeUrl;

  factory _$PhotoUrls([void Function(PhotoUrlsBuilder) updates]) =>
      (new PhotoUrlsBuilder()..update(updates)).build();

  _$PhotoUrls._({this.fullSizeUrl, this.smallSizeUrl, this.thumbSizeUrl})
      : super._() {
    if (fullSizeUrl == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'fullSizeUrl');
    }
    if (smallSizeUrl == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'smallSizeUrl');
    }
    if (thumbSizeUrl == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'thumbSizeUrl');
    }
  }

  @override
  PhotoUrls rebuild(void Function(PhotoUrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoUrlsBuilder toBuilder() => new PhotoUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoUrls &&
        fullSizeUrl == other.fullSizeUrl &&
        smallSizeUrl == other.smallSizeUrl &&
        thumbSizeUrl == other.thumbSizeUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, fullSizeUrl.hashCode), smallSizeUrl.hashCode),
        thumbSizeUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoUrls')
          ..add('fullSizeUrl', fullSizeUrl)
          ..add('smallSizeUrl', smallSizeUrl)
          ..add('thumbSizeUrl', thumbSizeUrl))
        .toString();
  }
}

class PhotoUrlsBuilder implements Builder<PhotoUrls, PhotoUrlsBuilder> {
  _$PhotoUrls _$v;

  String _fullSizeUrl;
  String get fullSizeUrl => _$this._fullSizeUrl;
  set fullSizeUrl(String fullSizeUrl) => _$this._fullSizeUrl = fullSizeUrl;

  String _smallSizeUrl;
  String get smallSizeUrl => _$this._smallSizeUrl;
  set smallSizeUrl(String smallSizeUrl) => _$this._smallSizeUrl = smallSizeUrl;

  String _thumbSizeUrl;
  String get thumbSizeUrl => _$this._thumbSizeUrl;
  set thumbSizeUrl(String thumbSizeUrl) => _$this._thumbSizeUrl = thumbSizeUrl;

  PhotoUrlsBuilder();

  PhotoUrlsBuilder get _$this {
    if (_$v != null) {
      _fullSizeUrl = _$v.fullSizeUrl;
      _smallSizeUrl = _$v.smallSizeUrl;
      _thumbSizeUrl = _$v.thumbSizeUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoUrls other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoUrls;
  }

  @override
  void update(void Function(PhotoUrlsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoUrls build() {
    final _$result = _$v ??
        new _$PhotoUrls._(
            fullSizeUrl: fullSizeUrl,
            smallSizeUrl: smallSizeUrl,
            thumbSizeUrl: thumbSizeUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
