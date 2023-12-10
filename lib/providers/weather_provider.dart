import 'package:flutter/material.dart';
import 'package:mount_ack/models/weather.dart';
import 'package:mount_ack/service/weather_service.dart';

enum LoadingStatus { completed, searching, empty }

class WeatherProvider with ChangeNotifier {
  final Weather _weather =
  Weather(temp: 20, humidity: 50);

  Weather get weather => _weather;

  LoadingStatus _loadingStatus = LoadingStatus.empty;

  LoadingStatus get loadingStatus => _loadingStatus;

  String _message = "Loading...";

  String get message => _message;

  final OpenWeatherService _openWeatherService = OpenWeatherService();

  Future<void> getWeather() async {
    _loadingStatus = LoadingStatus.searching;

    final weatherData = await _openWeatherService.getWeather();
    if (weatherData == null) {
      _loadingStatus = LoadingStatus.empty;
      _message = 'Could not find weather. Please try again.';
    } else {
      _loadingStatus = LoadingStatus.completed;
      weather.mainWeather = weatherData['weather'][0]['main'];
      weather.mainWeatherId = weatherData['weather'][0]['id'];
      weather.icon = weatherData['weather'][0]['icon'];
      weather.temp = weatherData['main']['temp'];
      weather.temp = (weather.temp! * 10).roundToDouble() / 10;
      weather.tempMax = weatherData['main']['temp_max'];
      weather.tempMax = (weather.tempMax! * 10).roundToDouble() / 10;
      weather.tempMin = weatherData['main']['temp_min'];
      weather.tempMin = (weather.tempMin! * 10).roundToDouble() / 10;
      weather.feelsLike = weatherData['main']['feels_like'];
      weather.feelsLike = (weather.feelsLike! * 10).roundToDouble() / 10;
      weather.sunrise = weatherData['sys']['sunrise'].toDate();
      weather.sunset = weatherData['sys']['sunset'].toDate();
      weather.humidity = weatherData['main']['humidity'];
      weather.visibility = weatherData['visibility'];
      weather.country = weatherData['sys']['country'];
      weather.city = weatherData['name'];
    }

    notifyListeners();
  }
}
