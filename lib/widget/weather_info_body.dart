import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetWeatherCubit>(
      context,
    ).weatherModel!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(child: CustamText()),
        Center(
          child: Text(
            'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute.toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 20),
          ),
        ),

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
                Text(
                  'Maxtemp: ${weatherModel.maxTemp.round()}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Maxtemp: ${weatherModel.minTemp.round()}',
                  style: TextStyle(fontSize: 20),
                ),
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

class CustamText extends StatelessWidget {
  const CustamText({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Text(
      weatherModel?.cityName ?? '',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}


