import 'package:dio/dio.dart';

import '../local/get.dart';


class ApiInterceptor extends Interceptor {

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final token = accessToken;
    final path = options.path;
    final needToken = !path.contains('auth') && !path.contains('refresh');
    if (token != null && token.isNotEmpty && needToken) {
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      options.headers.remove('Authorization');
    }
    super.onRequest(options, handler);
  }
}
