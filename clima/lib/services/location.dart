import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;

  //Location({this.lat, this.long});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      lat = position.latitude;
      long = position.longitude;
    } on Exception catch (e) {
      print(e);
    }
  }
}
