// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_quiz_played.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryQuizPlayedImpl _$$HistoryQuizPlayedImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryQuizPlayedImpl(
      id: (json['id'] as num?)?.toInt(),
      questionSetId: (json['questionSetId'] as num?)?.toInt(),
      questionSetName: json['questionSetName'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      totalQuestions: (json['totalQuestions'] as num?)?.toInt(),
      correct: (json['correct'] as num?)?.toInt(),
      timeTaken: (json['timeTaken'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      questionHistory: (json['questionHistory'] as List<dynamic>?)
              ?.map((e) =>
                  QuestionHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuestionHistoryModel>[],
    );

Map<String, dynamic> _$$HistoryQuizPlayedImplToJson(
        _$HistoryQuizPlayedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionSetId': instance.questionSetId,
      'questionSetName': instance.questionSetName,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'totalQuestions': instance.totalQuestions,
      'correct': instance.correct,
      'timeTaken': instance.timeTaken,
      'score': instance.score,
      'questionHistory': instance.questionHistory,
    };
