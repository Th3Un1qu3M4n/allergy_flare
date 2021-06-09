import 'package:geolocator/geolocator.dart';

class Location {
  Position currPos;
  var latitude;
  var longitude;

  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,
          forceAndroidLocationManager: true);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
//Geolocator.getCurrentPosition(
//desiredAccuracy: LocationAccuracy.best,
//forceAndroidLocationManager: true)
//.then((Position position) {});
