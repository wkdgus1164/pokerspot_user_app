import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  factory AddressDto({
    required AddressMetaDto? meta,
    required List<AddressDocumentsDto?> documents,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
class AddressMetaDto with _$AddressMetaDto {
  factory AddressMetaDto({
    required int? total_count,
  }) = _AddressMetaDto;

  factory AddressMetaDto.fromJson(Map<String, dynamic> json) =>
      _$AddressMetaDtoFromJson(json);
}

@freezed
class AddressDocumentsDto with _$AddressDocumentsDto {
  factory AddressDocumentsDto({
    required AddressDocumentsRoadAddressDto? road_address,
    required AddressDocumentsAddressDto? address,
  }) = _AddressDocumentsDto;

  factory AddressDocumentsDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDocumentsDtoFromJson(json);
}

@freezed
class AddressDocumentsRoadAddressDto with _$AddressDocumentsRoadAddressDto {
  factory AddressDocumentsRoadAddressDto({
    required String? address_name,
    required String? region_1depth_name,
    required String? region_2depth_name,
    required String? region_3depth_name,
    required String? road_name,
    required String? underground_yn,
    required String? main_building_no,
    required String? sub_building_no,
    required String? building_name,
    required String? zone_no,
  }) = _AddressDocumentsRoadAddressDto;

  factory AddressDocumentsRoadAddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDocumentsRoadAddressDtoFromJson(json);
}

@freezed
class AddressDocumentsAddressDto with _$AddressDocumentsAddressDto {
  factory AddressDocumentsAddressDto({
    required String? address_name,
    required String? region_1depth_name,
    required String? region_2depth_name,
    required String? region_3depth_name,
    required String? mountain_yn,
    required String? main_address_no,
    required String? sub_address_no,
    required String? zip_code,
  }) = _AddressDocumentsAddressDto;

  factory AddressDocumentsAddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDocumentsAddressDtoFromJson(json);
}
