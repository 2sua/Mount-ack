import 'dart:html';

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class MyLocation {
  late double latitude;
  late double longitude;

  Future<void> getMyCurrentLocation() async {
    var status_position = await Permission.location.status;

    if (status_position.isGranted) {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    } else {
      print("위치 권한이 필요합니다.");
    }
  }
}
