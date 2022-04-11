import 'dart:convert';

import 'body.dart';

class DadJokes {
  bool? success;
  List<Body>? body;

  DadJokes({this.success, this.body});

  factory DadJokes.fromMap(Map<String, dynamic> data) => DadJokes(
        success: data['success'] as bool?,
        body: (data['body'] as List<dynamic>?)
            ?.map((e) => Body.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'success': success,
        'body': body?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DadJokes].
  factory DadJokes.fromJson(String data) {
    return DadJokes.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DadJokes] to a JSON string.
  String toJson() => json.encode(toMap());

  DadJokes copyWith({
    bool? success,
    List<Body>? body,
  }) {
    return DadJokes(
      success: success ?? this.success,
      body: body ?? this.body,
    );
  }
}
