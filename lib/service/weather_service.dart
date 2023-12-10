import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mount_ack/data/NetworkHelper.dart';
import 'package:mount_ack/data/my_location.dart';
import 'dart:developer' as developer;

class OpenWeatherService {
  final String? _apiKey = dotenv.env['openWeatherApiKey'];
  final String? _baseUrl = dotenv.env['openWeatherApiBaseUrl'];

  Future getWeather() async {
    MyLocation myLocation = MyLocation();
    developer.log("myLocation called in network");
    try {
      await myLocation.getMyCurrentLocation();
    } catch (e) {
      developer.log("error: getLocation ${e.toString()}");
    }

    final weatherData = NetworkHelper().getData(
        '$_baseUrl?lat=${myLocation.latitude}&lon=${myLocation.longitude}&appid=$_apiKey&units=metric'
    );
    return weatherData;
  }
}