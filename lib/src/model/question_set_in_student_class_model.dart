import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_set_in_student_class_model.freezed.dart';
part 'question_set_in_student_class_model.g.dart';

@freezed
class QuestionSetInStudentClassModel with _$QuestionSetInStudentClassModel {
  const QuestionSetInStudentClassModel._();

  const factory QuestionSetInStudentClassModel({
    int? id,
    String? name,
    String? description,
    bool? done,
  }) = _QuestionSetInStudentClassModel;

  factory QuestionSetInStudentClassModel.fromJson(Map<String, dynamic> json) => _$QuestionSetInStudentClassModelFromJson(json);
}
