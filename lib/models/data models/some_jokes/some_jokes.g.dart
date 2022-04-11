// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'some_jokes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SomeJokes _$$_SomeJokesFromJson(Map<String, dynamic> json) => _$_SomeJokes(
      success: json['success'] as bool?,
      body: (json['body'] as List<dynamic>?)
          ?.map((e) => Body.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SomeJokesToJson(_$_SomeJokes instance) =>
    <String, dynamic>{
      'success': instance.success,
      'body': instance.body,
    };
