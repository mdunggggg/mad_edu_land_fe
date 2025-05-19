// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomOverviewModelImpl _$$ClassroomOverviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassroomOverviewModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      code: json['code'] as String?,
      grade: (json['grade'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClassroomOverviewModelImplToJson(
        _$ClassroomOverviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalStudent': instance.totalStudent,
      'code': instance.code,
      'grade': instance.grade,
    };
