import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment_model.dart';
import 'like_model.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const PostModel._();

  const factory PostModel({
    int? id,
    String? title,
    String? content,
    String? author,
    int? authorId,
    DateTime? createdAt,
    @Default([]) List<CommentModel> comments,
    @Default([]) List<LikeModel> likes,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
