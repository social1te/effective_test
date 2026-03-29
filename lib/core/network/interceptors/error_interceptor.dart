import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
      DioException err,
      ErrorInterceptorHandler handler,
      ) async {
    _logError(err);
    final errorMessage = _mapErrorToMessage(err);
    handler.reject(err.copyWith(error: errorMessage));
  }

  void _logError(DioException err) {
    if (kDebugMode) {
      print('[DIO ERROR] ${err.type} - ${err.message}');
      print('REQUEST: ${err.requestOptions.uri}');
      if (err.requestOptions.data != null) {
        print('REQUEST DATA: ${err.requestOptions.data}');
      }
      if (err.response != null) {
        print('RESPONSE STATUS: ${err.response?.statusCode}');
        print('RESPONSE DATA: ${err.response?.data}');
      }
    }
  }

  String _mapErrorToMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return 'CONNECTION TIMEOUT';
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode == 404) {
          return '404, NOT FOUND';
        } else {
          return 'SERVER ERROR (STATUS CODE: $statusCode)';
        }
      case DioExceptionType.cancel:
        return 'REQUEST CANCELLED';
      case DioExceptionType.connectionError:
        return 'CONNECTION ERROR';
      case DioExceptionType.unknown:
        return 'UNKNOWN ERROR: ${error.error?.toString()}';
      case DioExceptionType.badCertificate:
        return 'BAD CERTIFICATE';
    }
  }
}