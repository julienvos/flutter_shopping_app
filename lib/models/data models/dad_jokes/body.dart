import 'dart:convert';

import 'author.dart';

class Body {
  String? id;
  String? setup;
  String? punchline;
  String? type;
  List<dynamic>? likes;
  Author? author;
  bool? approved;
  int? date;
  bool? nsfw;

  Body({
    this.id,
    this.setup,
    this.punchline,
    this.type,
    this.likes,
    this.author,
    this.approved,
    this.date,
    this.nsfw,
  });

  factory Body.fromMap(Map<String, dynamic> data) => Body(
        id: data['_id'] as String?,
        setup: data['setup'] as String?,
        punchline: data['punchline'] as String?,
        type: data['type'] as String?,
        likes: data['likes'] as List<dynamic>?,
        author: data['author'] == null
            ? null
            : Author.fromMap(data['author'] as Map<String, dynamic>),
        approved: data['approved'] as bool?,
        date: data['date'] as int?,
        nsfw: data['NSFW'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        '_id': id,
        'setup': setup,
        'punchline': punchline,
        'type': type,
        'likes': likes,
        'author': author?.toMap(),
        'approved': approved,
        'date': date,
        'NSFW': nsfw,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Body].
  factory Body.fromJson(String data) {
    return Body.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Body] to a JSON string.
  String toJson() => json.encode(toMap());

  Body copyWith({
    String? id,
    String? setup,
    String? punchline,
    String? type,
    List<dynamic>? likes,
    Author? author,
    bool? approved,
    int? date,
    bool? nsfw,
  }) {
    return Body(
      id: id ?? this.id,
      setup: setup ?? this.setup,
      punchline: punchline ?? this.punchline,
      type: type ?? this.type,
      likes: likes ?? this.likes,
      author: author ?? this.author,
      approved: approved ?? this.approved,
      date: date ?? this.date,
      nsfw: nsfw ?? this.nsfw,
    );
  }
}
