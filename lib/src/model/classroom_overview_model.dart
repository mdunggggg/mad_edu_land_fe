import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom_overview_model.freezed.dart';
part 'classroom_overview_model.g.dart';

@freezed
class ClassroomOverviewModel with _$ClassroomOverviewModel {
  const ClassroomOverviewModel._();

  const factory ClassroomOverviewModel({
    int? id,
    String? name,
    int? totalStudent,
    String? code,
  }) = _ClassroomOverviewModel;

  factory ClassroomOverviewModel.fromJson(Map<String, dynamic> json) => _$ClassroomOverviewModelFromJson(json);
}
