import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';

class GpsService {
  Future<List<double>> getLocation(
    Function(double lat, double lng) onSuccess,
  ) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Logger().e('gps error');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Logger().e('gps error');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Logger().e('gps error');
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );

    onSuccess(
      position.longitude,
      position.latitude,
    );

    return [position.latitude, position.longitude];
  }
}
