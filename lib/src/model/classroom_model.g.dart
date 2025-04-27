// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomModelImpl _$$ClassroomModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      code: json['code'] as String?,
      teacherName: json['teacherName'] as String?,
      grade: (json['grade'] as num?)?.toInt(),
      totalQuestionSet: (json['totalQuestionSet'] as num?)?.toInt(),
      totalDoneQuestionSet: (json['totalDoneQuestionSet'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClassroomModelImplToJson(
        _$ClassroomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalStudent': instance.totalStudent,
      'code': instance.code,
      'teacherName': instance.teacherName,
      'grade': instance.grade,
      'totalQuestionSet': instance.totalQuestionSet,
      'totalDoneQuestionSet': instance.totalDoneQuestionSet,
    };
