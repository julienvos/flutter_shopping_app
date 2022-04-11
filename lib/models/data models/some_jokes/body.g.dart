// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Body _$$_BodyFromJson(Map<String, dynamic> json) => _$_Body(
      id: json['_id'] as String?,
      setup: json['setup'] as String?,
      punchline: json['punchline'] as String?,
      type: json['type'] as String?,
      likes: json['likes'] as List<dynamic>?,
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      approved: json['approved'] as bool?,
      date: json['date'] as int?,
      nsfw: json['NSFW'] as bool?,
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      '_id': instance.id,
      'setup': instance.setup,
      'punchline': instance.punchline,
      'type': instance.type,
      'likes': instance.likes,
      'author': instance.author,
      'approved': instance.approved,
      'date': instance.date,
      'NSFW': instance.nsfw,
    };
