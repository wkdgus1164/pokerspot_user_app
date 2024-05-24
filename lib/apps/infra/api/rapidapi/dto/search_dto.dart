import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchResultListDto with _$SearchResultListDto {
  factory SearchResultListDto({
    required String search_term,
    required List<SearchResultDto> results,
  }) = _SearchResultListDto;

  factory SearchResultListDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchResultListDtoFromJson(json);
}

@freezed
class SearchResultDto with _$SearchResultDto {
  factory SearchResultDto({
    required int position,
    required String url,
    required String title,
    required String description,
  }) = _SearchResultDto;

  factory SearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDtoFromJson(json);
}
