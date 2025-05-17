import 'package:edu_land/src/model/question_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_set_model.freezed.dart';
part 'question_set_model.g.dart';

@freezed
class QuestionSetModel with _$QuestionSetModel {
  const QuestionSetModel._();

  const factory QuestionSetModel({
    int? id,
    String? name,
    String? description,
    int? totalQuestion,
    DateTime? createdDate,
    @Default([])
    List<QuestionModel> questions,
  }) = _QuestionSetModel;

  factory QuestionSetModel.fromJson(Map<String, dynamic> json) => _$QuestionSetModelFromJson(json);
}
