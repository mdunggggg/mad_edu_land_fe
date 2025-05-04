// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentProfileModelImpl _$$StudentProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      grade: (json['grade'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StudentProfileModelImplToJson(
        _$StudentProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'fullName': instance.fullName,
      'grade': instance.grade,
    };
