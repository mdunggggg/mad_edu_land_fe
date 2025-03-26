import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_assign_info_model.freezed.dart';
part 'class_assign_info_model.g.dart';

@freezed
class ClassAssignInfoModel with _$ClassAssignInfoModel {
  const ClassAssignInfoModel._();

  const factory ClassAssignInfoModel({
    int? id,
    String? name,
    int? totalStudent,
    bool? assigned,
  }) = _ClassAssignInfoModel;

  factory ClassAssignInfoModel.fromJson(Map<String, dynamic> json) => _$ClassAssignInfoModelFromJson(json);
}