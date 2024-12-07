import 'package:dio/dio.dart';
import 'package:t3/models/weather_model.dart';

class WeatherServise {
  final Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '9bc5a4ff82124f31962224041242104';
  Future<WeatherModel> getWeather(String cityName) async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');
    WeatherModel weatherModel = WeatherModel.fromjson(response.data);
    return weatherModel;
  }
}
