import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl='api.weatherapi.com/v1';
  final String apiKey='key=18c67800f56d4297b5082133260205';
  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await  dio.get(
      'https://$baseUrl/forecast.json?$apiKey&q=$cityName&days=1', );
     
   WeatherModel weatherModel= WeatherModel.fromjson(response.data);

   return weatherModel; 
  }

  Future<WeatherModel> getForcast({required String cityName}) async {
    Response response = await  dio.get(
      'https://$baseUrl/forecast.json?$apiKey&q=$cityName&days=1', );

   WeatherModel weatherModel= WeatherModel.fromjson(response.data);

   return weatherModel; 
  }



}
