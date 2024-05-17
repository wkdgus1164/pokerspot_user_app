import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/kakao_map_api.dart';
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
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 10),
      );

      final address = await ref.read(kakaoMapApiProvider).fetchAddressName(
            position.longitude,
            position.latitude,
          );

      Logger().i('''
LocationService
  position: $position
  address: $address''');

      return LocationModel(
        latitude: position.latitude,
        longitude: position.longitude,
        address: address.documents.firstOrNull?.address.address_name ?? "",
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
