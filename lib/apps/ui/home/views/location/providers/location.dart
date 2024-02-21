import 'dart:async';

import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/dto/address_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/kakao_map_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location.g.dart';

@riverpod
class LocationName extends _$LocationName {
  @override
  FutureOr<AddressDto> build() {
    return _fetch();
  }

  Future<AddressDto> _fetch() async {
    final res = await ref.read(kakaoMapApiProvider).fetchAddressName();
    return res.toModels();
  }
}

extension _AddressModelMapperExtension on AddressDto {
  AddressDto toModels() {
    return AddressDto(meta: meta, documents: documents);
  }
}
