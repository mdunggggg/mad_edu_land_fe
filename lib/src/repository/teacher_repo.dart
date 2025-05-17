import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/class_assign_info_model.dart';
import 'package:edu_land/src/model/question_set_model.dart';
import 'package:edu_land/src/model/teacher_class_info_model.dart';
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

  Future<BaseModel<List<QuestionSetModel>>> myQuestionSet({Category? category, String? search}) async {
    try {
      final Map<String, dynamic> query = category != null ? {'category': category.name, 'search': search} : {};
      if (search != null) {
        query['search'] = search;
      }
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

  Future<BaseModel> getStateAssignedClass({required int questionSetId, String? search}) async {
    try {
      final query = questionSetId != 0 ? {'questionSetId': questionSetId} : null;
      final response = await _dio.get(ApiPath.stateAssignedClass, queryParameters: query);
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => ClassAssignInfoModel.fromJson(e)).toList();
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return _handleException(e, dataBool: false);
    }
  }

  Future<BaseModel<List<TeacherClassInfoModel>>> getTeacherClassList({String? search}) async {
    try {
      final response = await _dio.get(ApiPath.teacherClassList, queryParameters: {'search': search});
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => TeacherClassInfoModel.fromJson(e)).toList();
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

  Future<BaseModel> deleteQuestionSet({required int questionSetId}) async {
    try {
      final response = await _dio.delete('${ApiPath.deleteQuestionSet}/$questionSetId');
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: response.data['result'] as bool?,
      );
    } catch (e) {
      return _handleException(e, dataBool: true);
    }
  }

  Future<BaseModel<QuestionSetModel>> myDetailQuestionSet({required int id}) async {
    try {
      final response = await _dio.get('${ApiPath.myQuestionSet}/$id');
      final dataModel = QuestionSetModel.fromJson(response.data['result']);
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
          data: null, // Use the provided dataBool parameter
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: null,
      );
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