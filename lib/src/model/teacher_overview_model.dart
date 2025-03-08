import 'package:edu_land/src/model/classroom_overview_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_overview_model.freezed.dart';
part 'teacher_overview_model.g.dart';

@freezed
class TeacherOverviewModel with _$TeacherOverviewModel {
  const TeacherOverviewModel._();

  const factory TeacherOverviewModel({
    String? name,
    int? totalStudent,
    int? totalClass,
    @Default([]) List<ClassroomOverviewModel> classrooms,
  }) = _TeacherOverviewModel;

  factory TeacherOverviewModel.fromJson(Map<String, dynamic> json) => _$TeacherOverviewModelFromJson(json);
}
