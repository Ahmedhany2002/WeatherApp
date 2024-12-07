
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t3/cubits/weather_cubit/weather_states.dart';
import 'package:t3/models/weather_model.dart';
import 'package:t3/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(InitialWeatherState());
  WeatherModel? weatherModel;
  getCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherServise().getWeather(cityName);
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(WeatherFailedState());
    }
  }
}
