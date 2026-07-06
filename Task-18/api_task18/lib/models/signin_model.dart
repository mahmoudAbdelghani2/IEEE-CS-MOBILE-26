import 'package:happy_tech_mastering_api_with_flutter/core/api/endpoints.dart';

class SigninModel {
  final String message;
  final String token;

  SigninModel({required this.message, required this.token});

  factory SigninModel.fromJson(Map<String, dynamic> response) {
    return SigninModel(
        message: response[ApiKey.message], token: response[ApiKey.token]);
  }
}
