
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
        title: Text(
          'Search a City',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            // style: TextStyle(height: 3),
            onSubmitted: (value) {
            //  print(value);
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
