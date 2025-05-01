import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_attempt_model.freezed.dart';
part 'student_attempt_model.g.dart';

@freezed
class StudentAttemptModel with _$StudentAttemptModel {
  const StudentAttemptModel._();

  const factory StudentAttemptModel({
    double? score,
    int? timeTaken,
    int? correct,
    int? total,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? finishedAt,
  }) = _StudentAttemptModel;

  factory StudentAttemptModel.fromJson(Map<String, dynamic> json) => _$StudentAttemptModelFromJson(json);
}
