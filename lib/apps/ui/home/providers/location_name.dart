import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:logger/web.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/dto/address_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/kakao_map_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_name.g.dart';

@riverpod
class LocationName extends _$LocationName {
  @override
  FutureOr<AddressDto> build() {
    return _fetch();
  }

  Future<AddressDto> _fetch() async {
    double latitude = 127.028361548;
    double longitude = 37.496486063;

    if (await Permission.location.status.isGranted) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    }

    Logger().d('사용자의 현위치: lat: $latitude, lon: $longitude');

    final res = await ref.read(kakaoMapApiProvider).fetchAddressName(
          longitude,
          latitude,
        );
    return res.toModels();
  }
}

extension _AddressModelMapperExtension on AddressDto {
  AddressDto toModels() {
    return AddressDto(meta: meta, documents: documents);
  }
}
