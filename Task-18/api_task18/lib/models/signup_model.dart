import 'package:happy_tech_mastering_api_with_flutter/core/api/endpoints.dart';

class SignupModel {
  final String message;

  SignupModel({required this.message});
  factory SignupModel.fromJson(Map<String, dynamic> jsonData) {
    return SignupModel(message: jsonData[ApiKey.message]);
  }
}
