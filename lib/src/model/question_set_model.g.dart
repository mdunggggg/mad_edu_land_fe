// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionSetModelImpl _$$QuestionSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionSetModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      totalQuestion: (json['totalQuestion'] as num?)?.toInt(),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuestionSetModelImplToJson(
        _$QuestionSetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'totalQuestion': instance.totalQuestion,
      'createdDate': instance.createdDate?.toIso8601String(),
      'questions': instance.questions,
    };
