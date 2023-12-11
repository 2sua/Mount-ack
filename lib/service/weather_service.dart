import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mount_ack/network/network_helper.dart';
import 'package:mount_ack/data/my_location.dart';
import 'package:mount_ack/models/weather.dart';
import 'package:logging/logging.dart';
import 'dart:developer' as developer;
import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenWeatherService {
  final String? _apiKey = dotenv.env['openWeatherApiKey'];
  final String? _baseUrl = dotenv.env['openWeatherApiBaseUrl'];

  Future getWeather() async {
    MyLocation myLocation = MyLocation();
    try {
      await myLocation.getMyCurrentLocation();
    } catch (e) {
      developer.log("error: getLocation ${e.toString()}");
    }

    Weather weather = Weather();
    http.Response response;
    String apiAddr = '$_baseUrl?lat=${myLocation.latitude}&lon=${myLocation.longitude}&appid=$_apiKey&units=metric';
    try {
      response = await http.get(Uri.parse(apiAddr));
      final weatherData = json.decode(response.body);
      weather = Weather(
          temp: (weatherData['main']['temp'] * 10).round() ~/ 10,
          tempMax: (weatherData['main']['temp_max'] * 10).round() ~/ 10,
          tempMin: (weatherData['main']['temp_min'] * 10).round() ~/ 10,
          feelsLike: (weatherData['main']['feels_like'] * 10).round() ~/ 10,
          mainWeather: weatherData["weather"][0]["main"],
          mainWeatherId: weatherData["weather"][0]["id"],
          icon: weatherData["weather"][0]["icon"],
          sunrise: DateTime.fromMicrosecondsSinceEpoch(weatherData["sys"]["sunrise"]),
          sunset: DateTime.fromMicrosecondsSinceEpoch(weatherData["sys"]["sunset"]),
          humidity: weatherData['main']['humidity'],
          visibility: weatherData['visibility'] / 1000,
          country: weatherData['sys']['country'],
          city: weatherData['name']
      );
      return weather;
    } catch (e) {
      print("에러: ${e.toString()}");
      return;
    }
  }
}
