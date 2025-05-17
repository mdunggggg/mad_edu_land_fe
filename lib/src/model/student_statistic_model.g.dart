// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_statistic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentStatisticModelImpl _$$StudentStatisticModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentStatisticModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      correctAnswerCount: (json['correctAnswerCount'] as num?)?.toInt(),
      done: json['done'] as bool?,
      doAt:
          json['doAt'] == null ? null : DateTime.parse(json['doAt'] as String),
    );

Map<String, dynamic> _$$StudentStatisticModelImplToJson(
        _$StudentStatisticModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'studentId': instance.studentId,
      'fullName': instance.fullName,
      'score': instance.score,
      'correctAnswerCount': instance.correctAnswerCount,
      'done': instance.done,
      'doAt': instance.doAt?.toIso8601String(),
    };
