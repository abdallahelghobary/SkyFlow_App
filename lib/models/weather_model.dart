class WeatherModel {
  final String weatherCondition;
  final double temperature;
  final String cityName;
  final String updateTime;
  final String? image;
  final String maxTemp;
  final String minTemp;
 
  WeatherModel({required this.weatherCondition, required this.temperature
  , required this.cityName, required this.updateTime,  this.image, required this.maxTemp, required this.minTemp   });
}
