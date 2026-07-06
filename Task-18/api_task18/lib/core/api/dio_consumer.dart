import 'package:dio/dio.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/api_consumer.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/api_interceptors.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/endpoints.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/errors/exeotions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ));
  }
  @override
  Future<dynamic> delete(String path,
      {dynamic data,
      Map<String, dynamic>? qureyParametares,
      bool isFormData = false}) async {
    try {
      final response = await dio.delete(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: qureyParametares);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptio(e);
    }
  }

  @override
  Future<dynamic> get(String path,
      {Object? data, Map<String, dynamic>? qureyParametares}) async {
    try {
      final response =
          await get(path, data: data, qureyParametares: qureyParametares);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptio(e);
    }
  }

  @override
  Future<dynamic> patch(String path,
      {dynamic data,
      Map<String, dynamic>? qureyParametares,
      bool isFormData = false}) async {
    try {
      final response = await patch(path,
          data: isFormData ? FormData.fromMap(data) : data,
          qureyParametares: qureyParametares);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptio(e);
    }
  }

  @override
  Future<dynamic> post(String path,
      {dynamic data,
      Map<String, dynamic>? qureyParametares,
      bool isFormData = false}) async {
    try {
      final response = await post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          qureyParametares: qureyParametares);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptio(e);
    }
  }
}
