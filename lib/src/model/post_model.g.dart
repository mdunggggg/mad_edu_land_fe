// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
      authorId: (json['authorId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      likes: (json['likes'] as List<dynamic>?)
              ?.map((e) => LikeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'authorId': instance.authorId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'comments': instance.comments,
      'likes': instance.likes,
    };
