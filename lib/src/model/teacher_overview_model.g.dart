// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherOverviewModelImpl _$$TeacherOverviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherOverviewModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      totalClass: (json['totalClass'] as num?)?.toInt(),
      classrooms: (json['classrooms'] as List<dynamic>?)
              ?.map((e) =>
                  ClassroomOverviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TeacherOverviewModelImplToJson(
        _$TeacherOverviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'totalStudent': instance.totalStudent,
      'totalClass': instance.totalClass,
      'classrooms': instance.classrooms,
    };
