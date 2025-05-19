import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_choice_model.freezed.dart';
part 'answer_choice_model.g.dart';

@freezed
class AnswerChoiceModel with _$AnswerChoiceModel {
  const AnswerChoiceModel._();

  const factory AnswerChoiceModel({
    int? id,
    String? choiceLabel,
    String? answerText,
    String? answerImageUrl,
    @Default(false) bool isSelected,
    bool? isCorrect,
  }) = _AnswerChoiceModel;

  factory AnswerChoiceModel.fromJson(Map<String, dynamic> json) => _$AnswerChoiceModelFromJson(json);
}
