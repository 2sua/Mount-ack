import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mount_ack/data/my_location.dart';
import 'package:mount_ack/models/route.dart' as route_model;
import 'dart:developer' as developer;
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetSearchRouteService {

  Future<List<route_model.Route>> getSearchRoute(String mntnName) async {
    MyLocation myLocation = MyLocation();

    try {
      await myLocation.getMyCurrentLocation();
    } catch (e) {
      developer.log("에러!!!!!: getLocation ${e.toString()}");
    }

    List<route_model.Route> routes = [];
    http.Response response;
    String apiAddr = 'http://110.165.19.10:8000/mountrack/routes?MNTN_NM=${mntnName}';

    try {
      response = await http.get(Uri.parse(apiAddr));
      final routeData = json.decode(response.body)[0];
      routeData.forEach((e) => routes.add(route_model.Route(
        id: e['id'],
        mntnNm: e['MNTN_NM'],
        pmntnNm: e['PMNTN_NM'],
        pmntnLt: e['PMNTN_LT'],
        pmntnDffl: e['PMNTN_DFFL'],
        pmntnUppl: e['PMNTN_UPPL'],
        pmntnGodn: e['PMNTN_GODN'],
        pmntnRisk: e['PMNTN_RISK'],
        geometry: List<dynamic>.from(jsonDecode(e['geometry'])),
      )));
    } catch (e) {
      print("에러: ${e.toString()}");
    }
    return routes;
  }
}
