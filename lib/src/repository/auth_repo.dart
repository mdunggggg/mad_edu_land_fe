import 'package:dio/dio.dart';
import 'package:edu_land/src/data/apis/api_path.dart';
import 'package:edu_land/src/data/apis/api_service.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart';
import 'package:edu_land/src/model/base_model.dart';

import '../feature/screen/login_and_register/login_and_register_screen.dart';
import '../model/token_model.dart';

class AuthRepo {
  final _dio = ApiService();

  Future<BaseModel<bool>> register({
    required Map<String, dynamic> body,
    required Role type,
  }) async {
    try {
      final response = await _dio.post(ApiPath.register, data: body);
      final data = response.data['result'] as bool?;
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: data,
      );
    } catch (e) {
      if(e is DioException){
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic> ? responseData['message'] ?? 'Unknown error' : e.message;
        return BaseModel(
          code: e.response?.statusCode ?? 400,
          message: errorMessage,
          data: false,
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
        data: false,
      );
    }
  }

  Future<BaseModel<TokenModel>> login({
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await _dio.post(ApiPath.login, data: body);
      final dataModel = TokenModel.fromJson(response.data['result']);
      return BaseModel(
        code: response.data['code'],
        message: response.data['message'],
        data: dataModel,
      );
    } catch (e) {
      if(e is DioException){
        final responseData = e.response?.data;
        final errorMessage = responseData is Map<String, dynamic> ? responseData['message'] ?? 'Unknown error' : e.message;
        return BaseModel(
          code: e.response?.statusCode ?? 400,
          message: errorMessage,
        );
      }
      return BaseModel(
        code: 400,
        message: e.toString(),
      );
    }
  }
}
