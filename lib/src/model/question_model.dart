import 'package:edu_land/src/model/answer_choice_model.dart';
import 'package:edu_land/src/model/question_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const QuestionModel._();

  const factory QuestionModel({
    int? id,
    QuestionType? questionType,
    String? questionText,
    String? questionImageUrl,
    @Default(<AnswerChoiceModel>[]) List<AnswerChoiceModel> answerChoices,
    bool? isCorrect,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);
}
