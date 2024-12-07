import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t3/cubits/weather_cubit/weatehr_cubit.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search a city'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  label: Text('search'),
                  hintText: 'search a city'),
              onSubmitted: (value) async {
                var getWeather = BlocProvider.of<GetWeatherCubit>(context);
                getWeather.getCurrentWeather(cityName: value);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
