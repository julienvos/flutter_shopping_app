import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';

part 'body.freezed.dart';
part 'body.g.dart';

@freezed
class Body with _$Body {
  factory Body({
    @JsonKey(name: '_id') String? id,
    String? setup,
    String? punchline,
    String? type,
    List<dynamic>? likes,
    Author? author,
    bool? approved,
    int? date,
    @JsonKey(name: 'NSFW') bool? nsfw,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
