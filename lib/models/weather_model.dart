class WeatherModel {
  final String weatherCondition;
  final double temperature;
  final String cityName;
  final String date;
  final String? image;
  final double maxTemp;
  final double minTemp;
  WeatherModel({
    required this.weatherCondition,
    required this.temperature,
    required this.cityName,
    required this.date,
    this.image,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromjson( Map<String, dynamic> json) {
    return WeatherModel(
      image: json['current']['condition']['icon'] ,
      cityName: json["location"]['name'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      temperature: json["current"]["temp_c"],
      date: json["current"]["last_updated"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
    );
  }
}
