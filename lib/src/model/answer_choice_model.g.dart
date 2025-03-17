// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_choice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerChoiceModelImpl _$$AnswerChoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerChoiceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      choiceLabel: json['choiceLabel'] as String?,
      answerText: json['answerText'] as String?,
      answerImageUrl: json['answerImageUrl'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$AnswerChoiceModelImplToJson(
        _$AnswerChoiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'choiceLabel': instance.choiceLabel,
      'answerText': instance.answerText,
      'answerImageUrl': instance.answerImageUrl,
      'isSelected': instance.isSelected,
    };
