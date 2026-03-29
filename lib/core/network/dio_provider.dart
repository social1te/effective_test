import 'package:dio/dio.dart';
import 'package:effective_test_app/src/common/utils/dotenv_util.dart';
import 'package:effective_test_app/core/network/interceptors/dio_logger.dart';
import 'package:effective_test_app/core/network/interceptors/error_interceptor.dart';

Dio dioProvider() {
  final dio = Dio();

  dio.options.baseUrl = Env.get('BASE_URL');
  dio.options.connectTimeout = const Duration(seconds: 15);
  dio.options.receiveTimeout = const Duration(seconds: 15);
  dio.interceptors.clear();

  dio.interceptors.addAll(createLoggingInterceptors());

  dio.interceptors.add(ErrorInterceptor());

  return dio;
}
