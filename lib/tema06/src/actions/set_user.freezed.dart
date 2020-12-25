// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_user;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetUserTearOff {
  const _$SetUserTearOff();

// ignore: unused_element
  _SetUser call({String user}) {
    return _SetUser(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetUser = _$SetUserTearOff();

/// @nodoc
mixin _$SetUser {
  String get user;

  $SetUserCopyWith<SetUser> get copyWith;
}

/// @nodoc
abstract class $SetUserCopyWith<$Res> {
  factory $SetUserCopyWith(SetUser value, $Res Function(SetUser) then) = _$SetUserCopyWithImpl<$Res>;

  $Res call({String user});
}

/// @nodoc
class _$SetUserCopyWithImpl<$Res> implements $SetUserCopyWith<$Res> {
  _$SetUserCopyWithImpl(this._value, this._then);

  final SetUser _value;

  // ignore: unused_field
  final $Res Function(SetUser) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as String,
    ));
  }
}

/// @nodoc
abstract class _$SetUserCopyWith<$Res> implements $SetUserCopyWith<$Res> {
  factory _$SetUserCopyWith(_SetUser value, $Res Function(_SetUser) then) = __$SetUserCopyWithImpl<$Res>;

  @override
  $Res call({String user});
}

/// @nodoc
class __$SetUserCopyWithImpl<$Res> extends _$SetUserCopyWithImpl<$Res> implements _$SetUserCopyWith<$Res> {
  __$SetUserCopyWithImpl(_SetUser _value, $Res Function(_SetUser) _then) : super(_value, (v) => _then(v as _SetUser));

  @override
  _SetUser get _value => super._value as _SetUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_SetUser(
      user: user == freezed ? _value.user : user as String,
    ));
  }
}

/// @nodoc
class _$_SetUser implements _SetUser {
  const _$_SetUser({this.user});

  @override
  final String user;

  @override
  String toString() {
    return 'SetUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetUser && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SetUserCopyWith<_SetUser> get copyWith => __$SetUserCopyWithImpl<_SetUser>(this, _$identity);
}

abstract class _SetUser implements SetUser {
  const factory _SetUser({String user}) = _$_SetUser;

  @override
  String get user;

  @override
  _$SetUserCopyWith<_SetUser> get copyWith;
}
