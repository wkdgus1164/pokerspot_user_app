import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDto with _$SearchDto {
  factory SearchDto({
    required double id,
    required String name,
  }) = _SearchDto;

  factory SearchDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchDtoFromJson(json);
}
