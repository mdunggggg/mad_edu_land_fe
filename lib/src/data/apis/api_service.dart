import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_interceptor.dart';

class ApiService extends DioMixin {
  static final ApiService _instance = ApiService._internal();
  static int decryptionShift = 0;
  static const String _baseUrl = 'http://3.112.214.143:8080';

  factory ApiService() => _instance;

  ApiService._internal() {
    options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    interceptors.addAll([
      ApiInterceptor(),
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
      ),
      CurlLoggerDioInterceptor(
        printOnSuccess: true,
      ),
    ]);
    interceptors.removeImplyContentTypeInterceptor();
    httpClientAdapter = IOHttpClientAdapter();
  }

  @override
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async {
    try {
      final Response<T> res = await super.fetch(requestOptions);
      return res;
    } on DioException catch (e) {
      throw e.error ?? e;
    }
  }
}
