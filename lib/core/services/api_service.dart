import 'package:dio/dio.dart';

import '../error/exceptions.dart';
import '../network/error_message_model.dart';
import 'locator/service_locator.dart';

class ApiService {
  static final Dio _dio = sl<Dio>();

  static Future<Response> get(String path,
      {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParams);
      return response;
    } catch (error) {
      throw ServerException(
          errorModel: ErrorModel.fromJson(const {'statusCode': 0}));
    }
  }

  static Future<Response> post(String path, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(path, data: data);

      return response;
    } catch (error) {
      throw ServerException(
          errorModel: ErrorModel.fromJson(const {'statusCode': 0}));
    }
  }

  static Future<Response> delete(String path) async {
    try {
      final response = await _dio.delete(path);

      return response;
    } catch (error) {
      throw ServerException(
          errorModel: ErrorModel.fromJson(const {'statusCode': 0}));
    }
  }

  static Future<Response> postFormData(
    String path,
    FormData formData,
  ) async {
    try {
      final response = await _dio.post(path, data: formData);
      return response;
    } catch (error) {
      throw ServerException(
          errorModel: ErrorModel.fromJson(const {'statusCode': 0}));
    }
  }

  static dynamic handleError(error) {
    // Implement your error handling logic here
    return error;
  }
}
