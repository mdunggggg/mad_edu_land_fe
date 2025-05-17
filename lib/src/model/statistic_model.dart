import 'package:freezed_annotation/freezed_annotation.dart';

import 'student_statistic_model.dart';

part 'statistic_model.freezed.dart';

part 'statistic_model.g.dart';

@freezed
class StatisticModel with _$StatisticModel {
  const StatisticModel._();

  const factory StatisticModel({
    int? questionSetId,
    int? classroomId,
    String? questionSetName,
    String? questionSetDescription,
    String? classroomName,
    int? totalStudent,
    int? totalStudentDone,
    double? averageScore,
    double? highestScore,
    double? lowestScore,
    @Default([]) List<StudentStatisticModel> studentResults,
  }) = _StatisticModel;

  factory StatisticModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticModelFromJson(json);
}
