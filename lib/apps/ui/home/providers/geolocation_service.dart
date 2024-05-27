import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geolocation_service.g.dart';
part 'geolocation_service.freezed.dart';

@freezed
class GeoLocationModel with _$GeoLocationModel {
  factory GeoLocationModel({
    @Default(37.496486063) double latitude,
    @Default(127.028361548) double longitude,
  }) = _GeoLocationModel;

  GeoLocationModel._();
}

@riverpod
class GeoLocationService extends _$GeoLocationService {
  @override
  GeoLocationModel build() {
    return GeoLocationModel(
      latitude: 37.496486063,
      longitude: 127.028361548,
    );
  }

  void setLatitude(double latitude) {
    state = state.copyWith(latitude: latitude);
    Logger().i('Latitude data: $latitude');
    ref.keepAlive();
  }

  void setLongitude(double longitude) {
    state = state.copyWith(longitude: longitude);
    Logger().i('Longitude data: $longitude');
    ref.keepAlive();
  }
}
