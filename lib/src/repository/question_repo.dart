import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/data/apis/api_service.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/history_quiz_played.dart';
import 'package:edu_land/src/model/question_model.dart';
import 'package:edu_land/src/model/scoring_model.dart';

class QuestionRepo {
  final _dio = ApiService();

  Future<BaseModel<List<QuestionModel>>> getQuestions({
    required int questionSetId,
  }) async {
    try {
      final response = await _dio.get(ApiPath.question, queryParameters: {
        'questionSetId': questionSetId,
      });
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => QuestionModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    }
    catch(e) {
      if (e is DioException) {
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Unknown error'
            : e.message ?? 'Dio error'; // Add null check for e.message
        return BaseModel(
          code: 400,
          message: errorMessage,
          data: [], // Use the provided dataBool parameter
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: [], // Use the provided dataBool parameter
      );
    }
  }

  Future<BaseModel<ScoringModel>> scoring({required Map<String, dynamic> body}) async {
      try {
        final response = await _dio.post(ApiPath.scoring, data: body);
        final data = response.data['result'];
        final dataModel = ScoringModel.fromJson(data);
        return BaseModel(
          code: response.data['code'],
          message: response.data['message'],
          data: dataModel,
        );
      }
      catch(e) {
        if (e is DioException) {
          final responseData = e.response?.data;
          final errorMessage = responseData is Map<String, dynamic>
              ? responseData['message'] ?? 'Unknown error'
              : e.message ?? 'Dio error'; // Add null check for e.message
          return BaseModel(
            code: 400,
            message: errorMessage,
            data: null, // Use the provided dataBool parameter
          );
        }
        return BaseModel(
          code: 400,
          message: e.toString(),
          data: null, // Use the provided dataBool parameter
        );
      }
  }

  Future<BaseModel<HistoryQuizPlayed>> getHistoryQuizPlayed({required historyId}) async {
    try {
      final response = await _dio.get('${ApiPath.historyQuizPlayed}/$historyId');
      final data = response.data['result'];
      final dataModel = HistoryQuizPlayed.fromJson(data);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    }
    catch(e) {
      if (e is DioException) {
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Unknown error'
            : e.message ?? 'Dio error'; // Add null check for e.message
        return BaseModel(
          code: 400,
          message: errorMessage,
          data: null, // Use the provided dataBool parameter
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: null, // Use the provided dataBool parameter
      );
    }
  }
}
