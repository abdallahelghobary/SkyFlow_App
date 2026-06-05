import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // iconTheme: IconThemeData(color: Colors.white),
      //  backgroundColor: Colors.orange,
        title: Text(
          'Search a City',
          style: TextStyle( fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            // style: TextStyle(height: 3),
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              labelText: 'Search',
              suffixIcon: const Icon(Icons.search),
              hintText: 'Enter City Name',

              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              /*
              enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
     
         
                borderSide: BorderSide(color: Colors.orange)
              ),
     
              focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
     
                borderSide: BorderSide(color: Colors.pink)
                */
            ),
          ),
        ),
      ),
    );
  }
}







// TOD State
// ? No Weater State 
// ? Exit Weather 200
// ! Exit Exception 

