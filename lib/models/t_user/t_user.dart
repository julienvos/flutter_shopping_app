import 'dart:convert';

class TUser {
  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  String? downloadUrl;

  TUser({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  @override
  String toString() {
    return 'TUser(id: $id, author: $author, width: $width, height: $height, url: $url, downloadUrl: $downloadUrl)';
  }

  factory TUser.fromMap(Map<String, dynamic> data) => TUser(
        id: data['id'] as String?,
        author: data['author'] as String?,
        width: data['width'] as int?,
        height: data['height'] as int?,
        url: data['url'] as String?,
        downloadUrl: data['download_url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'author': author,
        'width': width,
        'height': height,
        'url': url,
        'download_url': downloadUrl,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TUser].
  factory TUser.fromJson(String data) {
    return TUser.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TUser] to a JSON string.
  String toJson() => json.encode(toMap());

  TUser copyWith({
    String? id,
    String? author,
    int? width,
    int? height,
    String? url,
    String? downloadUrl,
  }) {
    return TUser(
      id: id ?? this.id,
      author: author ?? this.author,
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
      downloadUrl: downloadUrl ?? this.downloadUrl,
    );
  }
}
