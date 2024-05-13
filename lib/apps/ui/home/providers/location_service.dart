import 'package:geolocator/geolocator.dart';

class LocationService {
  void getCurrentPosition(
    Function(
      double latitude,
      double longitude,
    ) onSuccess,
    Function(
      String error,
    ) onFailure,
  ) async {
    double latitude = 127.028361548;
    double longitude = 37.496486063;

    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 10),
      );
      latitude = position.latitude;
      longitude = position.longitude;

      onSuccess(latitude, longitude);
    } catch (e) {
      onFailure(e.toString());
    }
  }
}
