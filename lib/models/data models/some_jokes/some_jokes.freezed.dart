// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'some_jokes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SomeJokes _$SomeJokesFromJson(Map<String, dynamic> json) {
  return _SomeJokes.fromJson(json);
}

/// @nodoc
class _$SomeJokesTearOff {
  const _$SomeJokesTearOff();

  _SomeJokes call({bool? success, List<Body>? body}) {
    return _SomeJokes(
      success: success,
      body: body,
    );
  }

  SomeJokes fromJson(Map<String, Object?> json) {
    return SomeJokes.fromJson(json);
  }
}

/// @nodoc
const $SomeJokes = _$SomeJokesTearOff();

/// @nodoc
mixin _$SomeJokes {
  bool? get success => throw _privateConstructorUsedError;
  List<Body>? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SomeJokesCopyWith<SomeJokes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SomeJokesCopyWith<$Res> {
  factory $SomeJokesCopyWith(SomeJokes value, $Res Function(SomeJokes) then) =
      _$SomeJokesCopyWithImpl<$Res>;
  $Res call({bool? success, List<Body>? body});
}

/// @nodoc
class _$SomeJokesCopyWithImpl<$Res> implements $SomeJokesCopyWith<$Res> {
  _$SomeJokesCopyWithImpl(this._value, this._then);

  final SomeJokes _value;
  // ignore: unused_field
  final $Res Function(SomeJokes) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<Body>?,
    ));
  }
}

/// @nodoc
abstract class _$SomeJokesCopyWith<$Res> implements $SomeJokesCopyWith<$Res> {
  factory _$SomeJokesCopyWith(
          _SomeJokes value, $Res Function(_SomeJokes) then) =
      __$SomeJokesCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, List<Body>? body});
}

/// @nodoc
class __$SomeJokesCopyWithImpl<$Res> extends _$SomeJokesCopyWithImpl<$Res>
    implements _$SomeJokesCopyWith<$Res> {
  __$SomeJokesCopyWithImpl(_SomeJokes _value, $Res Function(_SomeJokes) _then)
      : super(_value, (v) => _then(v as _SomeJokes));

  @override
  _SomeJokes get _value => super._value as _SomeJokes;

  @override
  $Res call({
    Object? success = freezed,
    Object? body = freezed,
  }) {
    return _then(_SomeJokes(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<Body>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SomeJokes implements _SomeJokes {
  _$_SomeJokes({this.success, this.body});

  factory _$_SomeJokes.fromJson(Map<String, dynamic> json) =>
      _$$_SomeJokesFromJson(json);

  @override
  final bool? success;
  @override
  final List<Body>? body;

  @override
  String toString() {
    return 'SomeJokes(success: $success, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SomeJokes &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$SomeJokesCopyWith<_SomeJokes> get copyWith =>
      __$SomeJokesCopyWithImpl<_SomeJokes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SomeJokesToJson(this);
  }
}

abstract class _SomeJokes implements SomeJokes {
  factory _SomeJokes({bool? success, List<Body>? body}) = _$_SomeJokes;

  factory _SomeJokes.fromJson(Map<String, dynamic> json) =
      _$_SomeJokes.fromJson;

  @override
  bool? get success;
  @override
  List<Body>? get body;
  @override
  @JsonKey(ignore: true)
  _$SomeJokesCopyWith<_SomeJokes> get copyWith =>
      throw _privateConstructorUsedError;
}
