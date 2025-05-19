import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_class_info_model.freezed.dart';
part 'teacher_class_info_model.g.dart';

@freezed
class TeacherClassInfoModel with _$TeacherClassInfoModel {
  const TeacherClassInfoModel._();

  const factory TeacherClassInfoModel({
    int? id,
    String? name,
    int? totalStudent,
    String? code,
    int? grade,
  }) = _TeacherClassInfoModel;

  factory TeacherClassInfoModel.fromJson(Map<String, dynamic> json) => _$TeacherClassInfoModelFromJson(json);
}