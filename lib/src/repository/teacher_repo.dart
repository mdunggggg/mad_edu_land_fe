import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/model/teacher_overview_model.dart';
import 'package:edu_land/src/model/teacher_profile_model.dart';

import '../data/apis/api_service.dart';
import '../feature/screen/student/home/student_home_screen.dart';

class TeacherRepo {
  final _dio = ApiService();

  Future<BaseModel> getTeacherOverview() async {
    try {
      final response = await _dio.post(ApiPath.teacher);
      final dataModel = TeacherOverviewModel.fromJson(response.data['result']);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return _handleException(e, dataBool: false);
    }
  }

  Future<BaseModel> createClass({required Map<String, dynamic> payload}) async {
    try {
      final response = await _dio.post(ApiPath.classroom, data: payload);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as int?,
      );
    } catch (e) {
      return _handleException(e, dataBool: true);
    }
  }

  Future<BaseModel<List<QuestionSetModel>>> myQuestionSet({Category? category}) async {
    try {
      final query = category != null ? {'category': category.name} : null;
      final response = await _dio.get(ApiPath.myQuestionSet, queryParameters: query);
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
        data: [],
      );
    }
  }

  Future<BaseModel> getTeacherProfile() async {
    try {
      final response = await _dio.post(ApiPath.teacherProfile);
      final dataModel = TeacherProfileModel.fromJson(response.data['result']);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return _handleException(e, dataBool: false);
    }
  }


  // Helper function to handle exceptions and return BaseModel
  BaseModel _handleException(dynamic e, {bool dataBool = false}) {
    if (e is DioException) {
      final responseData = e.response?.data;
      final errorMessage = responseData is Map<String, dynamic>
          ? responseData['message'] ?? 'Unknown error'
          : e.message ?? 'Dio error'; // Add null check for e.message
      return BaseModel(
        code: 400,
        message: errorMessage,
        data: dataBool, // Use the provided dataBool parameter
      );
    }
    return BaseModel(
      code: 400,
      message: e.toString(),
      data: dataBool, // Use the provided dataBool parameter
    );
  }
}