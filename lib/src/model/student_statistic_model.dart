import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_statistic_model.freezed.dart';
part 'student_statistic_model.g.dart';

@freezed
class StudentStatisticModel with _$StudentStatisticModel {
  const StudentStatisticModel._();

  const factory StudentStatisticModel({
    int? userId,
    int? studentId,
    String? fullName,
    double? score,
    int? correctAnswerCount,
    bool? done,
    DateTime? doAt,
  }) = _StudentStatisticModel;

  factory StudentStatisticModel.fromJson(Map<String, dynamic> json) => _$StudentStatisticModelFromJson(json);
}
