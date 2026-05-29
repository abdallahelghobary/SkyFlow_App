import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());

  // create Function

  void getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherServices(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeatherSuccesState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
