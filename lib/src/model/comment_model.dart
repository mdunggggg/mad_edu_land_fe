import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();

  const factory CommentModel({
    int? id, 
    String? content,
    String? author,
    int? authorId,
    DateTime? createdAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}
