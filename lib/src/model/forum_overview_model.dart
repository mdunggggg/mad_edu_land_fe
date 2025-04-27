import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_overview_model.freezed.dart';
part 'forum_overview_model.g.dart';

@freezed
class ForumOverviewModel with _$ForumOverviewModel {
  const ForumOverviewModel._();

  const factory ForumOverviewModel({
    int? id,
    int? userId,
    String? title,
    String? content,
    String? author,
    int? totalComments,
    int? totalLikes,
    DateTime? createdAt,
    @Default(false) bool liked,
  }) = _ForumOverviewModel;

  factory ForumOverviewModel.fromJson(Map<String, dynamic> json) => _$ForumOverviewModelFromJson(json);
}
