import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_profile_model.freezed.dart';
part 'teacher_profile_model.g.dart';

@freezed
class TeacherProfileModel with _$TeacherProfileModel {
  const TeacherProfileModel._();

  const factory TeacherProfileModel({
    int? id,
    String? username,
    String? fullName,
  }) = _TeacherProfileModel;

  factory TeacherProfileModel.fromJson(Map<String, dynamic> json) => _$TeacherProfileModelFromJson(json);
}