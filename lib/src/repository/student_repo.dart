import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_service.dart';
import 'package:edu_land/src/model/base_model.dart';
import 'package:edu_land/src/model/classroom_model.dart';
import 'package:edu_land/src/model/student_profile_model.dart';

import '../data/apis/api_path.dart';

class StudentRepo {
  final _dio = ApiService();

  Future<BaseModel> getStudentProfile() async {
    try {
      final response = await _dio.post(ApiPath.studentProfile);
      final dataModel = StudentProfileModel.fromJson(response.data['result']);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      return _handleException(e, dataBool: false);
    }
  }

  Future<BaseModel<List<ClassroomModel>>> getMyClassrooms() async {
    try {
      final response = await _dio.get(ApiPath.getMyClassrooms);
      final data = response.data['result'] as List;
      final dataModel = data.map((e) => ClassroomModel.fromJson(e)).toList();
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

  Future<BaseModel> joinClassroom({required String code}) async {
    try {
      final response = await _dio.post(ApiPath.joinClassroom,
          data: {'classroomCode': code});
      return BaseModel(
        data: response.data['result'] as bool,
        code: response.data['code'],
        message: response.data['message'],
      );
    } catch (e) {
      return _handleException(e);
    }
  }

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