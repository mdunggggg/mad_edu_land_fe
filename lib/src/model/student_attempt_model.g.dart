// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attempt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentAttemptModelImpl _$$StudentAttemptModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentAttemptModelImpl(
      score: (json['score'] as num?)?.toDouble(),
      timeTaken: (json['timeTaken'] as num?)?.toInt(),
      correct: (json['correct'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$$StudentAttemptModelImplToJson(
        _$StudentAttemptModelImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'timeTaken': instance.timeTaken,
      'correct': instance.correct,
      'total': instance.total,
      'createdAt': instance.createdAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
    };
