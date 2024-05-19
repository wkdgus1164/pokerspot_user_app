import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';

part 'stores_dto.freezed.dart';
part 'stores_dto.g.dart';

@freezed
class StoresDto with _$StoresDto {
  factory StoresDto({
    required int page,
    required int perPage,
    required int totalPage,
    required int totalCount,
    required List<StoreDto> items,
  }) = _StoresDto;

  factory StoresDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoresDtoFromJson(json);
}
