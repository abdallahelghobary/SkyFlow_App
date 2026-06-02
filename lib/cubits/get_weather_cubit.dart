import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());

  late WeatherModel weatherModel;
  // create Function

  void getWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherServices(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeatherSuccesState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }

  MaterialColor getThemeColor() {
    if (weatherModel.temperature >= 35)
      return Colors.deepOrange;
    else if (weatherModel.temperature >= 25)
      return Colors.orange;
    else if (weatherModel.temperature >= 15)
      return Colors.lightBlue;
    else
      return Colors.blue;
  }
}
