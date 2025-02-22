
class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String state;
  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.state});
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
        cityName: json["location"]['name'],
        date: DateTime.parse(json["current"]['last_updated']),
        maxTemp: json['forecast']["forecastday"][0]['day']['maxtemp_c'],
        minTemp: json['forecast']["forecastday"][0]['day']['mintemp_c'],
        temp: json['forecast']["forecastday"][0]['day']['avgtemp_c'],
        state: json['forecast']["forecastday"][0]['day']['condition']['text'],
        image: json['forecast']["forecastday"][0]['day']['condition']['icon']);
  }
}
