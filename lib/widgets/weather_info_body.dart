import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t3/cubits/weather_cubit/weatehr_cubit.dart';
import 'package:t3/main.dart';


class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var Weather = BlocProvider.of<GetWeatherCubit>(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
            getThemeColors(Weather.weatherModel!.state)[300]!,
            getThemeColors(Weather.weatherModel!.state)[50]!
          ])),
      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 4,
          ),
          Text(
            Weather.weatherModel!.cityName,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            '${Weather.weatherModel!.date.hour} : ${Weather.weatherModel!.date.minute.toString()}',
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network('https:${Weather.weatherModel!.image}'),
              Text(
                "${Weather.weatherModel!.temp}",
                style: TextStyle(fontSize: 25),
              ),
              Column(
                children: [
                  Text(
                    "min temp ${Weather.weatherModel!.minTemp}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "max temp ${Weather.weatherModel!.maxTemp}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Text(
            "${Weather.weatherModel!.state}",
            style: TextStyle(fontSize: 25),
          ),
          Spacer(
            flex: 5,
          )
        ],
      ),
    );
  }
}
