import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_answer_choice_model.freezed.dart';
part 'review_answer_choice_model.g.dart';

@freezed
class ReviewAnswerChoiceModel with _$ReviewAnswerChoiceModel {
  const ReviewAnswerChoiceModel._();

  const factory ReviewAnswerChoiceModel({
    String? choiceLabel,
    String? answerText,
    String? answerImageUrl,
    bool? submittedByStudent,
    bool? correct,
  }) = _ReviewAnswerChoiceModel;

  factory ReviewAnswerChoiceModel.fromJson(Map<String, dynamic> json) => _$ReviewAnswerChoiceModelFromJson(json);
}