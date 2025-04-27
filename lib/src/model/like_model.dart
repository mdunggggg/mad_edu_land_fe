import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_model.freezed.dart';
part 'like_model.g.dart';

@freezed
class LikeModel with _$LikeModel {
  const LikeModel._();

  const factory LikeModel({
    int? id,
    int? userId,
    String? username,
    int? postId,
    DateTime? createdAt,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> json) => _$LikeModelFromJson(json);
}
