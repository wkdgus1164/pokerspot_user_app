import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto_v2.dart';

part 'stores_v2_dto.freezed.dart';
part 'stores_v2_dto.g.dart';

@freezed
class StoresV2Dto with _$StoresV2Dto {
  factory StoresV2Dto({
    required int page,
    required int perPage,
    required int totalPage,
    required int totalCount,
    required List<StoreV2Dto> items,
  }) = _StoresV2Dto;

  factory StoresV2Dto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoresV2DtoFromJson(json);
}
