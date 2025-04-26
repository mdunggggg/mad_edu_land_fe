import 'package:edu_land/src/model/review_answer_choice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_history_model.freezed.dart';
part 'question_history_model.g.dart';

@freezed
class QuestionHistoryModel with _$QuestionHistoryModel {
  const QuestionHistoryModel._();

  const factory QuestionHistoryModel({
    String? questionText,
    String? questionImageUrl,
    @Default(<ReviewAnswerChoiceModel>[]) List<ReviewAnswerChoiceModel> answerChoices,
  }) = _QuestionHistoryModel;

  factory QuestionHistoryModel.fromJson(Map<String, dynamic> json) => _$QuestionHistoryModelFromJson(json);
}