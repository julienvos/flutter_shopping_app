import 'package:freezed_annotation/freezed_annotation.dart';

import 'body.dart';

part 'some_jokes.freezed.dart';
part 'some_jokes.g.dart';

@freezed
class SomeJokes with _$SomeJokes {
  factory SomeJokes({
    bool? success,
    List<Body>? body,
  }) = _SomeJokes;

  factory SomeJokes.fromJson(Map<String, dynamic> json) =>
      _$SomeJokesFromJson(json);
}
