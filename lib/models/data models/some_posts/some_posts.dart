import 'dart:convert';

class SomePosts {
  int? userId;
  int? id;
  String? title;
  String? body;

  SomePosts({this.userId, this.id, this.title, this.body});

  @override
  String toString() {
    return 'SomePosts(userId: $userId, id: $id, title: $title, body: $body)';
  }

  factory SomePosts.fromMap(Map<String, dynamic> data) => SomePosts(
        userId: data['userId'] as int?,
        id: data['id'] as int?,
        title: data['title'] as String?,
        body: data['body'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SomePosts].
  factory SomePosts.fromJson(String data) {
    return SomePosts.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SomePosts] to a JSON string.
  String toJson() => json.encode(toMap());

  SomePosts copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return SomePosts(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
