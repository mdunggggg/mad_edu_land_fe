import 'package:freezed_annotation/freezed_annotation.dart';

part 'scoring_model.freezed.dart';
part 'scoring_model.g.dart';

@freezed
class ScoringModel with _$ScoringModel {
  const ScoringModel._();

  const factory ScoringModel({
    int? correct,
    int? total,
    double? score,
    int? timeTaken,
    int? historyId,
  }) = _ScoringModel;

  factory ScoringModel.fromJson(Map<String, dynamic> json) => _$ScoringModelFromJson(json);
}
