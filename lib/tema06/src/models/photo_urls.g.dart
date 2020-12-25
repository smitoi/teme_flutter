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

  factory _$PhotoUrls([void Function(PhotoUrlsBuilder) updates]) =>
      (new PhotoUrlsBuilder()..update(updates)).build();

  _$PhotoUrls._({this.fullSizeUrl, this.smallSizeUrl}) : super._() {
    if (fullSizeUrl == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'fullSizeUrl');
    }
    if (smallSizeUrl == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'smallSizeUrl');
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
        smallSizeUrl == other.smallSizeUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, fullSizeUrl.hashCode), smallSizeUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoUrls')
          ..add('fullSizeUrl', fullSizeUrl)
          ..add('smallSizeUrl', smallSizeUrl))
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

  PhotoUrlsBuilder();

  PhotoUrlsBuilder get _$this {
    if (_$v != null) {
      _fullSizeUrl = _$v.fullSizeUrl;
      _smallSizeUrl = _$v.smallSizeUrl;
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
        new _$PhotoUrls._(fullSizeUrl: fullSizeUrl, smallSizeUrl: smallSizeUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
