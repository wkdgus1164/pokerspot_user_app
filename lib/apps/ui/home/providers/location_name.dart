import 'dart:async';

import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/dto/address_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/kakao_map_api.dart';
import 'package:pokerspot_user_app/apps/global/utils/gps/gps_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_name.g.dart';

@riverpod
class LocationName extends _$LocationName {
  @override
  FutureOr<AddressDto> build() {
    return _fetch();
  }

  Future<AddressDto> _fetch() async {
    double latitude = 37.496486063;
    double longitude = 127.028361548;

    await GpsService().getLocation(
      (lat, lng) {
        latitude = lat;
        longitude = lng;
      },
    );

    Logger().d('사용자의 현위치: lat: $latitude, lon: $longitude');

    final res = await ref.read(kakaoMapApiProvider).fetchAddressName(
          latitude,
          longitude,
        );
    return res.toModels();
  }
}

extension _AddressModelMapperExtension on AddressDto {
  AddressDto toModels() {
    return AddressDto(meta: meta, documents: documents);
  }
}
