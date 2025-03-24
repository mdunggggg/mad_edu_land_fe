// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherProfileModelImpl _$$TeacherProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$TeacherProfileModelImplToJson(
        _$TeacherProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
    };
