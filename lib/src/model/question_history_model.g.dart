// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionHistoryModelImpl _$$QuestionHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionHistoryModelImpl(
      questionText: json['questionText'] as String?,
      questionImageUrl: json['questionImageUrl'] as String?,
      answerChoices: (json['answerChoices'] as List<dynamic>?)
              ?.map((e) =>
                  ReviewAnswerChoiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewAnswerChoiceModel>[],
    );

Map<String, dynamic> _$$QuestionHistoryModelImplToJson(
        _$QuestionHistoryModelImpl instance) =>
    <String, dynamic>{
      'questionText': instance.questionText,
      'questionImageUrl': instance.questionImageUrl,
      'answerChoices': instance.answerChoices,
    };
