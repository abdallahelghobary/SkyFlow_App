import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherSuccesState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccesState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errorMassege;

  WeatherFailureState(this.errorMassege);
}
