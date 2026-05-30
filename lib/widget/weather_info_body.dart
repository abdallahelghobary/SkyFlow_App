import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Center(child: Text(weatherModel.date, style: TextStyle(fontSize: 20))),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           // Text(weatherModel.image, style: TextStyle(fontSize: 100)),

           Image.network('https:${weatherModel.image}'),

            Text(
              weatherModel.maxTemp.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            Column(
              children: [
                Text('Maxtemp: ${weatherModel.maxTemp}', style: TextStyle(fontSize: 20)),
                Text('Maxtemp: ${weatherModel.minTemp}', style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),

        Center(
          child: Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
