import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

List<Interceptor> createLoggingInterceptors() {
  final loggers = <Interceptor>[];

  if (kDebugMode) {
    loggers.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        compact: true,
      ),
    );
  }

  return loggers;
}