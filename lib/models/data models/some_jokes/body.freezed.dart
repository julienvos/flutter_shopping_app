// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
class _$BodyTearOff {
  const _$BodyTearOff();

  _Body call(
      {@JsonKey(name: '_id') String? id,
      String? setup,
      String? punchline,
      String? type,
      List<dynamic>? likes,
      Author? author,
      bool? approved,
      int? date,
      @JsonKey(name: 'NSFW') bool? nsfw}) {
    return _Body(
      id: id,
      setup: setup,
      punchline: punchline,
      type: type,
      likes: likes,
      author: author,
      approved: approved,
      date: date,
      nsfw: nsfw,
    );
  }

  Body fromJson(Map<String, Object?> json) {
    return Body.fromJson(json);
  }
}

/// @nodoc
const $Body = _$BodyTearOff();

/// @nodoc
mixin _$Body {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get setup => throw _privateConstructorUsedError;
  String? get punchline => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<dynamic>? get likes => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;
  bool? get approved => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'NSFW')
  bool? get nsfw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? setup,
      String? punchline,
      String? type,
      List<dynamic>? likes,
      Author? author,
      bool? approved,
      int? date,
      @JsonKey(name: 'NSFW') bool? nsfw});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  final Body _value;
  // ignore: unused_field
  final $Res Function(Body) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? setup = freezed,
    Object? punchline = freezed,
    Object? type = freezed,
    Object? likes = freezed,
    Object? author = freezed,
    Object? approved = freezed,
    Object? date = freezed,
    Object? nsfw = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setup: setup == freezed
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String?,
      punchline: punchline == freezed
          ? _value.punchline
          : punchline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      approved: approved == freezed
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      nsfw: nsfw == freezed
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) then) =
      __$BodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? setup,
      String? punchline,
      String? type,
      List<dynamic>? likes,
      Author? author,
      bool? approved,
      int? date,
      @JsonKey(name: 'NSFW') bool? nsfw});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res>
    implements _$BodyCopyWith<$Res> {
  __$BodyCopyWithImpl(_Body _value, $Res Function(_Body) _then)
      : super(_value, (v) => _then(v as _Body));

  @override
  _Body get _value => super._value as _Body;

  @override
  $Res call({
    Object? id = freezed,
    Object? setup = freezed,
    Object? punchline = freezed,
    Object? type = freezed,
    Object? likes = freezed,
    Object? author = freezed,
    Object? approved = freezed,
    Object? date = freezed,
    Object? nsfw = freezed,
  }) {
    return _then(_Body(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setup: setup == freezed
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String?,
      punchline: punchline == freezed
          ? _value.punchline
          : punchline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      approved: approved == freezed
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      nsfw: nsfw == freezed
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Body implements _Body {
  _$_Body(
      {@JsonKey(name: '_id') this.id,
      this.setup,
      this.punchline,
      this.type,
      this.likes,
      this.author,
      this.approved,
      this.date,
      @JsonKey(name: 'NSFW') this.nsfw});

  factory _$_Body.fromJson(Map<String, dynamic> json) => _$$_BodyFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? setup;
  @override
  final String? punchline;
  @override
  final String? type;
  @override
  final List<dynamic>? likes;
  @override
  final Author? author;
  @override
  final bool? approved;
  @override
  final int? date;
  @override
  @JsonKey(name: 'NSFW')
  final bool? nsfw;

  @override
  String toString() {
    return 'Body(id: $id, setup: $setup, punchline: $punchline, type: $type, likes: $likes, author: $author, approved: $approved, date: $date, nsfw: $nsfw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Body &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.setup, setup) &&
            const DeepCollectionEquality().equals(other.punchline, punchline) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.approved, approved) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.nsfw, nsfw));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(setup),
      const DeepCollectionEquality().hash(punchline),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(approved),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(nsfw));

  @JsonKey(ignore: true)
  @override
  _$BodyCopyWith<_Body> get copyWith =>
      __$BodyCopyWithImpl<_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyToJson(this);
  }
}

abstract class _Body implements Body {
  factory _Body(
      {@JsonKey(name: '_id') String? id,
      String? setup,
      String? punchline,
      String? type,
      List<dynamic>? likes,
      Author? author,
      bool? approved,
      int? date,
      @JsonKey(name: 'NSFW') bool? nsfw}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get setup;
  @override
  String? get punchline;
  @override
  String? get type;
  @override
  List<dynamic>? get likes;
  @override
  Author? get author;
  @override
  bool? get approved;
  @override
  int? get date;
  @override
  @JsonKey(name: 'NSFW')
  bool? get nsfw;
  @override
  @JsonKey(ignore: true)
  _$BodyCopyWith<_Body> get copyWith => throw _privateConstructorUsedError;
}
