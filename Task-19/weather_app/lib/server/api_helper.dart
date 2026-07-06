// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class ApiHelper {
  final dio = Dio();

  Future<WeatherModel> getData(String city) async {
    String apiKey = 'f92417adebf74911ae6223847231204';
    final response = await dio.get(
      'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$city',
    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
