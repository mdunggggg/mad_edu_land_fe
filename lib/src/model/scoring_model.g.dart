// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scoring_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoringModelImpl _$$ScoringModelImplFromJson(Map<String, dynamic> json) =>
    _$ScoringModelImpl(
      correct: (json['correct'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ScoringModelImplToJson(_$ScoringModelImpl instance) =>
    <String, dynamic>{
      'correct': instance.correct,
      'total': instance.total,
      'score': instance.score,
    };
