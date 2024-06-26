import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/kakao_map_api.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_service.freezed.dart';
part 'location_service.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    @Default(37.496486063) double latitude,
    @Default(127.028361548) double longitude,
    @Default("위치 정보 권한을 허용해 주세요") String address,
  }) = _LocationModel;

  LocationModel._();
}

@riverpod
class LocationService extends _$LocationService {
  @override
  Future<LocationModel> build() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest,
        timeLimit: const Duration(seconds: 10),
        forceAndroidLocationManager: true,
      );

      ref
          .read(geoLocationServiceProvider.notifier)
          .setLatitude(position.latitude);

      ref
          .read(geoLocationServiceProvider.notifier)
          .setLongitude(position.longitude);

      final address = await ref.read(kakaoMapApiProvider).fetchAddressName(
            ref.read(geoLocationServiceProvider).longitude,
            ref.read(geoLocationServiceProvider).latitude,
          );

      Logger().i('Address: ${address.documents[0]?.address.address_name}');
      Logger().i('Location: ${position.latitude}, ${position.longitude}');

      return LocationModel(
        latitude: ref.read(geoLocationServiceProvider).latitude,
        longitude: ref.read(geoLocationServiceProvider).longitude,
        address:
            address.documents.firstOrNull?.address.address_name ?? "현위치 정보 없음",
      );
    } catch (e, s) {
      Logger().e('LocationService', error: e, stackTrace: s);

      final address = await ref.read(kakaoMapApiProvider).fetchAddressName(
            127.028361548,
            37.496486063,
          );

      return LocationModel(
        latitude: 37.496486063,
        longitude: 127.028361548,
        address: address.documents.firstOrNull?.address.address_name ??
            "위치 정보 권한을 허용해 주세요",
      );
    }
  }
}
