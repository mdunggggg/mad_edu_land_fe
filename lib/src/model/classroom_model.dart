import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';


@freezed
class ClassroomModel with _$ClassroomModel {
  const ClassroomModel._();

  const factory ClassroomModel({
    int? id,
    String? name,
    int? totalStudent,
    String? code,
    String? teacherName,
    int? grade,
    int? totalQuestionSet,
    int? totalDoneQuestionSet,
  }) = _ClassroomModel;

  factory ClassroomModel.fromJson(Map<String, dynamic> json) => _$ClassroomModelFromJson(json);
}
