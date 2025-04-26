import 'package:edu_land/src/model/question_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_quiz_played.freezed.dart';
part 'history_quiz_played.g.dart';

@freezed
class HistoryQuizPlayed with _$HistoryQuizPlayed {
  const HistoryQuizPlayed._();

  const factory HistoryQuizPlayed({
    int? id,
    int? questionSetId,
    String? questionSetName,
    DateTime? startTime,
    DateTime? endTime,
    int? totalQuestions,
    int? correct,
    int? timeTaken,
    double? score,
    @Default(<QuestionHistoryModel>[]) List<QuestionHistoryModel> questionHistory,
  }) = _HistoryQuizPlayed;

  factory HistoryQuizPlayed.fromJson(Map<String, dynamic> json) => _$HistoryQuizPlayedFromJson(json);
}