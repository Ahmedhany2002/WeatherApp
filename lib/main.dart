import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t3/cubits/weather_cubit/weatehr_cubit.dart';
import 'package:t3/views/home_view.dart';


void main() {
  runApp(app1());
}

class app1 extends StatelessWidget {
  const app1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: getThemeColors(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.state)),
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        );
      }),
    );
  }
}

MaterialColor getThemeColors(String? condition) {
  if (condition == null) {
    return Colors.blue;
  } else {
    switch (condition.toLowerCase()) {
      case 'sunny':
        return Colors.orange;
      case 'clear':
        return Colors.blue;
      case 'partly cloudy':
        return Colors.lightBlue;
      case 'cloudy':
        return Colors.grey;
      case 'overcast':
        return Colors.blueGrey;
      case 'mist':
        return Colors.indigo;
      case 'patchy rain possible':
        return Colors.lightBlue;
      case 'patchy snow possible':
        return Colors.lightBlue;
      case 'patchy sleet possible':
        return Colors.lightGreen;
      case 'patchy freezing drizzle possible':
        return Colors.cyan;
      case 'thundery outbreaks possible':
        return Colors.deepPurple;
      case 'blowing snow':
        return Colors.blue;
      case 'blizzard':
        return Colors.blue;
      case 'fog':
        return Colors.grey;
      case 'freezing fog':
        return Colors.grey;
      case 'patchy light drizzle':
        return Colors.lightBlue;
      case 'light drizzle':
        return Colors.lightBlue;
      case 'freezing drizzle':
        return Colors.cyan;
      case 'heavy freezing drizzle':
        return Colors.cyan;
      case 'patchy light rain':
        return Colors.lightBlue;
      case 'light rain':
        return Colors.lightBlue;
      case 'moderate rain at times':
        return Colors.blue;
      case 'moderate rain':
        return Colors.blue;
      case 'heavy rain at times':
        return Colors.blue;
      case 'heavy rain':
        return Colors.blue;
      case 'light freezing rain':
        return Colors.cyan;
      case 'moderate or heavy freezing rain':
        return Colors.cyan;
      case 'light sleet':
        return Colors.blue;
      case 'moderate or heavy sleet':
        return Colors.blue;
      case 'patchy light snow':
        return Colors.lightBlue;
      case 'light snow':
        return Colors.lightBlue;
      case 'patchy moderate snow':
        return Colors.lightBlue;
      case 'moderate snow':
        return Colors.lightBlue;
      case 'patchy heavy snow':
        return Colors.lightBlue;
      case 'heavy snow':
        return Colors.lightBlue;
      case 'ice pellets':
        return Colors.lightBlue;
      case 'light rain shower':
        return Colors.lightBlue;
      case 'moderate or heavy rain shower':
        return Colors.lightBlue;
      case 'torrential rain shower':
        return Colors.lightBlue;
      case 'light sleet showers':
        return Colors.blue;
      case 'moderate or heavy sleet showers':
        return Colors.blue;
      case 'light snow showers':
        return Colors.lightBlue;
      case 'moderate or heavy snow showers':
        return Colors.lightBlue;
      case 'light showers of ice pellets':
        return Colors.lightBlue;
      case 'moderate or heavy showers of ice pellets':
        return Colors.lightBlue;
      case 'patchy light rain with thunder':
        return Colors.deepPurple;
      case 'moderate or heavy rain with thunder':
        return Colors.deepPurple;
      case 'patchy light snow with thunder':
        return Colors.deepPurple;
      case 'moderate or heavy snow with thunder':
        return Colors.deepPurple;
      default:
        return Colors.blue;
    }
  }
}
