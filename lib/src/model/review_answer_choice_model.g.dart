// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_answer_choice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewAnswerChoiceModelImpl _$$ReviewAnswerChoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewAnswerChoiceModelImpl(
      choiceLabel: json['choiceLabel'] as String?,
      answerText: json['answerText'] as String?,
      answerImageUrl: json['answerImageUrl'] as String?,
      submittedByStudent: json['submittedByStudent'] as bool?,
      correct: json['correct'] as bool?,
    );

Map<String, dynamic> _$$ReviewAnswerChoiceModelImplToJson(
        _$ReviewAnswerChoiceModelImpl instance) =>
    <String, dynamic>{
      'choiceLabel': instance.choiceLabel,
      'answerText': instance.answerText,
      'answerImageUrl': instance.answerImageUrl,
      'submittedByStudent': instance.submittedByStudent,
      'correct': instance.correct,
    };
