import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_profile_model.freezed.dart';
part 'student_profile_model.g.dart';

@freezed
class StudentProfileModel with _$StudentProfileModel {
  const StudentProfileModel._();

  const factory StudentProfileModel({
    int? id,
    String? username,
    String? fullName,
    int? grade,
  }) = _StudentProfileModel;

  factory StudentProfileModel.fromJson(Map<String, dynamic> json) => _$StudentProfileModelFromJson(json);
}