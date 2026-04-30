
import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
      
          Center(child: Text('there is no weather 😊 start ',style: TextStyle(
            fontSize: 30
          ),)),

          Text('Search Now 🔍',style: TextStyle(
            fontSize: 30
          ),  )
        ],
      
      ),
    );
  }
}
