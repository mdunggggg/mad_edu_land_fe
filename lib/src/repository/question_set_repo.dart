import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/data/apis/api_service.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/question_set_model.dart';

import '../feature/screen/student/home/student_home_screen.dart';

class QuestionSetRepo {
  final _dio = ApiService();

  Future<BaseModel<List<QuestionSetModel>>> getFreeQuestionSets(
    Category? category,
  ) async {
    try {
      final query = category != null ? {'category': category.name} : null;
      final response =
          await _dio.get(ApiPath.questionSet, queryParameters: query);
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => QuestionSetModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
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

  Future<BaseModel<QuestionSetModel>> create(
      {required FormData formData}) async {
    try {
      final result = await _dio.post(ApiPath.questionSet, data: formData);
      final dataModel = QuestionSetModel.fromJson(result.data['result']);
      return BaseModel(
        code: result.data['code'],
        message: result.data['message'],
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
          data: null // Use the provided dataBool parameter
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: null, // Use the provided dataBool parameter
      );
    }
  }

  Future<BaseModel> assignToClass({required classroomId, required questionSetId}) async {
    try {
      final query = {
        'classroomId': classroomId,
        'questionSetId': questionSetId,
      };
      final response = await _dio.post(ApiPath.assignClass, data: query);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as bool,
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
            data: null // Use the provided dataBool parameter
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
