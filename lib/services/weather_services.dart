import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'api.weatherapi.com/v1';
  final String apiKey = 'key=18c67800f56d4297b5082133260205';
  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        'https://$baseUrl/forecast.json?$apiKey&q=$cityName&days=1',
      );

       WeatherModel weatherModel= WeatherModel.fromjson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'opps there was error try later';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was error try later');
    }
  }
}
