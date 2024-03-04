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
      Logger().e('GPS 권한 활성화되지 않음!');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Logger().e('GPS 권한 1회 거부됨!');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Logger().e('GPS 권한 영원히 거부됨!');
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
