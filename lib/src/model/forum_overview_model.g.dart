// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForumOverviewModelImpl _$$ForumOverviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForumOverviewModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      title: json['title'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
      totalComments: (json['totalComments'] as num?)?.toInt(),
      totalLikes: (json['totalLikes'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      liked: json['liked'] as bool? ?? false,
    );

Map<String, dynamic> _$$ForumOverviewModelImplToJson(
        _$ForumOverviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'totalComments': instance.totalComments,
      'totalLikes': instance.totalLikes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'liked': instance.liked,
    };
