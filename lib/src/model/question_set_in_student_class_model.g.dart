// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_set_in_student_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionSetInStudentClassModelImpl
    _$$QuestionSetInStudentClassModelImplFromJson(Map<String, dynamic> json) =>
        _$QuestionSetInStudentClassModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          description: json['description'] as String?,
          done: json['done'] as bool?,
        );

Map<String, dynamic> _$$QuestionSetInStudentClassModelImplToJson(
        _$QuestionSetInStudentClassModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'done': instance.done,
    };
