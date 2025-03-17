// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']),
      questionText: json['questionText'] as String?,
      questionImageUrl: json['questionImageUrl'] as String?,
      answerChoices: (json['answerChoices'] as List<dynamic>?)
              ?.map(
                  (e) => AnswerChoiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AnswerChoiceModel>[],
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionType': _$QuestionTypeEnumMap[instance.questionType],
      'questionText': instance.questionText,
      'questionImageUrl': instance.questionImageUrl,
      'answerChoices': instance.answerChoices,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.SINGLE_CHOICE: 'SINGLE_CHOICE',
  QuestionType.MULTIPLE_CHOICE: 'MULTIPLE_CHOICE',
};
