import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_state.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: const CustomMaterialColor(),
    );
  }
}

class CustomMaterialColor extends StatelessWidget {
  const CustomMaterialColor({super.key});

  @override
  Widget build(BuildContext context) {
    // Rebuild MaterialApp theme when the GetWeatherCubit state changes
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        final condition = BlocProvider.of<GetWeatherCubit>(
          context,
        ).weatherModel?.weatherCondition;
        final primary = getThemeColor(condition);

        return MaterialApp(
          theme: ThemeData(
            primarySwatch: primary,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: primary),
            appBarTheme: AppBarTheme(
              backgroundColor: primary,
              foregroundColor: Colors.white,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        );
      },
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
    case 'clear':
      return Colors.orange;

    case 'partly cloudy':
    case 'cloudy':
    case 'overcast':
      return Colors.blueGrey;

    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.grey;

    default:
      return Colors.blue;
  }
}
