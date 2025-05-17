// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticModelImpl _$$StatisticModelImplFromJson(Map<String, dynamic> json) =>
    _$StatisticModelImpl(
      questionSetId: (json['questionSetId'] as num?)?.toInt(),
      classroomId: (json['classroomId'] as num?)?.toInt(),
      questionSetName: json['questionSetName'] as String?,
      questionSetDescription: json['questionSetDescription'] as String?,
      classroomName: json['classroomName'] as String?,
      totalStudent: (json['totalStudent'] as num?)?.toInt(),
      totalStudentDone: (json['totalStudentDone'] as num?)?.toInt(),
      averageScore: (json['averageScore'] as num?)?.toDouble(),
      highestScore: (json['highestScore'] as num?)?.toDouble(),
      lowestScore: (json['lowestScore'] as num?)?.toDouble(),
      studentResults: (json['studentResults'] as List<dynamic>?)
              ?.map((e) =>
                  StudentStatisticModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StatisticModelImplToJson(
        _$StatisticModelImpl instance) =>
    <String, dynamic>{
      'questionSetId': instance.questionSetId,
      'classroomId': instance.classroomId,
      'questionSetName': instance.questionSetName,
      'questionSetDescription': instance.questionSetDescription,
      'classroomName': instance.classroomName,
      'totalStudent': instance.totalStudent,
      'totalStudentDone': instance.totalStudentDone,
      'averageScore': instance.averageScore,
      'highestScore': instance.highestScore,
      'lowestScore': instance.lowestScore,
      'studentResults': instance.studentResults,
    };
