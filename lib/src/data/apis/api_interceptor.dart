import 'package:dio/dio.dart';

import '../local/get.dart';


class ApiInterceptor extends Interceptor {

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final token = accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      options.headers.remove('Authorization');
    }
    super.onRequest(options, handler);
  }
}
