import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/comment_model.dart';
import 'package:edu_land/src/model/forum_overview_model.dart';
import 'package:edu_land/src/model/like_model.dart';
import 'package:edu_land/src/model/post_model.dart';

import '../data/apis/api_service.dart';

class ForumRepo {
  final _dio = ApiService();

  Future<BaseModel<List<ForumOverviewModel>>> getListForums({
    String? search,
    int? page,
    int? size,
  }) async {
    try {
      final response = await _dio.get(ApiPath.posts,
      queryParameters: {
          'search': search,
          'page': page,
          'size': size,
        },);
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => ForumOverviewModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: [],
      );
    }
  }

  Future<BaseModel<int>> createPost({
    required String title,
    required String content,
  }) async {
    try {
      final response = await _dio.post(
        ApiPath.posts,
        data: {
          'title': title,
          'content': content,
        },
      );
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as int?,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: 0,
      );
    }
  }

  Future<BaseModel<PostModel>> getPostDetail(int postId) async {
    try {
      final response = await _dio.get('${ApiPath.posts}/$postId');
      final data = PostModel.fromJson(response.data['result']);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: data,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: null,
      );
    }
  }

  Future<BaseModel<List<CommentModel>>> addComment(int id, String content) async {
    try {
      final response = await _dio.post(
        '${ApiPath.posts}/$id/comments',
        data: {
          'content': content,
        },
      );
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => CommentModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: [],
      );
    }
  }

  Future<BaseModel<bool>> changeLike(int id) async {
    try {
      final response = await _dio.post(
        '${ApiPath.posts}/$id/likes',
      );
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as bool?,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: false,
      );
    }
  }

  Future<BaseModel<List<LikeModel>>> getLikes({required int postId}) async {
    try {
      final response = await _dio.get('${ApiPath.posts}/$postId/likes');
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => LikeModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: [],
      );
    }
  }

}