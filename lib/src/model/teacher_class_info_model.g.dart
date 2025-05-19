// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_class_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherClassInfoModelImpl _$$TeacherClassInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherClassInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      code: json['code'] as String?,
      grade: (json['grade'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TeacherClassInfoModelImplToJson(
        _$TeacherClassInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalStudent': instance.totalStudent,
      'code': instance.code,
      'grade': instance.grade,
    };
