import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t3/cubits/weather_cubit/weatehr_cubit.dart';
import 'package:t3/cubits/weather_cubit/weather_states.dart';
import 'package:t3/views/search_view.dart';
import 'package:t3/widgets/no_weather_body.dart';
import 'package:t3/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchView();
                    },
                  ));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            if (state is InitialWeatherState) {
              return NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoBody();
            } else {
              return Text("opppppsssssss");
            }
          },
        ));
  }
}
