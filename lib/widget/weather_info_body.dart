import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_view.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Text(
            'Alexandria',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Center(child: Text('updated at 23:46', style: TextStyle(fontSize: 20))),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('🌥️', style: TextStyle(fontSize: 100)),

            Text(
              '28°',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            Column(
              children: [
                Text('Maxtemp: 24', style: TextStyle(fontSize: 20)),
                Text('Maxtemp: 16', style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),

        Center(
          child: Text(
            'Light Rain',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
