import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mount_ack/data/my_location.dart';
import 'package:mount_ack/models/weather.dart';
import 'dart:developer' as developer;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class GetRoutService {
  // final String? _baseUrl = 'http://110.165.19.10:8000/mountrack/routes/?MNTN_NM=개금산';

  Future getRoute() async {
    MyLocation myLocation = MyLocation();

    try {
      await myLocation.getMyCurrentLocation();
    } catch (e) {
      developer.log("에러!!!!!: getLocation ${e.toString()}");
    }

    http.Response response;
    String apiAddr = 'http://110.165.19.10:8000/mountrack/routes/?MNTN_NM=개금산';

    try {
      response = await http.get(Uri.parse(apiAddr));
      final routeData = json.decode(response.body);
      return routeData;
    } catch (e) {
      print("에러: ${e.toString()}");
      return;
    }
  }
}
