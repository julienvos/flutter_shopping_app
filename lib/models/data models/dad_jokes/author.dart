import 'dart:convert';

class Author {
  String? name;
  dynamic id;

  Author({this.name, this.id});

  factory Author.fromMap(Map<String, dynamic> data) => Author(
        name: data['name'] as String?,
        id: data['id'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Author].
  factory Author.fromJson(String data) {
    return Author.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Author] to a JSON string.
  String toJson() => json.encode(toMap());

  Author copyWith({
    String? name,
    dynamic id,
  }) {
    return Author(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }
}
