import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_service.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/question_set_in_student_class_model.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/model/statistic_model.dart';
import 'package:edu_land/src/model/student_profile_model.dart';

import '../data/apis/api_path.dart';

class ClassroomRepo {
  final _dio = ApiService();

  Future<BaseModel<List<StudentProfileModel>>> getStudentInClassroom({
    required int classroomId,
    String? search
  }) async {
    try {
      final response = await _dio.get(
        ApiPath.studentInClassroom,
        queryParameters: {
          'classroomId': classroomId,
          'search': search,
        },
      );

      final data = response.data['result'] as List;
      final dataModel = data.map((e) => StudentProfileModel.fromJson(e)).toList();
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

  Future<BaseModel<List<QuestionSetModel>>> getQuestionSetInClassroom({
    required int classroomId,
  }) async {
    try {
      final response = await _dio.get(
        ApiPath.questionSetInClassroom,
        queryParameters: {
          'classroomId': classroomId,
        },
      );

      final data = response.data['result'] as List;
      final dataModel = data.map((e) => QuestionSetModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    }
    catch (e) {
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

  Future<BaseModel> addStudentToClassroom({
    required int classroomId,
    required String username
  }) async {
    try {
      final response = await _dio.post(
        ApiPath.addStudentToClassroom,
        data: {
          'classroomId': classroomId,
          'username': username,
        },
      );

      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as bool,
      );
    }
    catch (e) {
      if (e is DioException) {
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Unknown error'
            : e.message ?? 'Dio error'; // Add null check for e.message
        return BaseModel(
          code: 400,
          message: errorMessage,
          data: false
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: false
      );
    }
  }

  Future<BaseModel> removeStudentFromClassroom({
    required int classroomId,
    required int studentId
  }) async {
    try {
      final response = await _dio.delete(
        ApiPath.removeStudentFromClassroom,
        data: {
          'classroomId': classroomId,
          'studentId': studentId,
        },
      );

      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as bool,
      );
    }
    catch (e) {
      if (e is DioException) {
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Unknown error'
            : e.message ?? 'Dio error'; // Add null check for e.message
        return BaseModel(
          code: 400,
          message: errorMessage,
          data: false
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: false
      );
    }
  }

  Future<BaseModel<List<QuestionSetInStudentClassModel>>> questionSetInStudentClass(int id) async {
    try {
      final res = await _dio.get(
        '${ApiPath.classroom}/$id/question-sets',
      );
      final data = res.data['result'] as List;
      final dataModel = data.map((e) => QuestionSetInStudentClassModel.fromJson(e)).toList();
      return BaseModel(
        code: res.data['code'],
        message: res.data['message'],
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

  Future<String> genClassCode() async {
    try {
      final res = await _dio.get(
        ApiPath.generateClassCode,
      );
      return res.data['result'];
    } catch (e) {
      if (e is DioException) {
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic>
            ? responseData['message'] ?? 'Unknown error'
            : e.message ?? 'Dio error'; // Add null check for e.message
        return errorMessage;
      }
      return e.toString();
    }
  }

  Future<BaseModel<StatisticModel>> statistic({required int classroomId, required int questionSetId}) async {
    try {
      final res = await _dio.get(
        '${ApiPath.classroom}/$classroomId/statistics-question-set/$questionSetId',
      );
      final data = StatisticModel.fromJson(res.data['result']);
      return BaseModel(
        code: res.data['code'],
        message: res.data['message'],
        data: data,
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
          data: null,
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: null,
      );
    }
  }

}
