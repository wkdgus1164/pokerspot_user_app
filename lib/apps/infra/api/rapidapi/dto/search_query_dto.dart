import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query_dto.freezed.dart';
part 'search_query_dto.g.dart';

@freezed
class SearchQuery with _$SearchQuery {
  factory SearchQuery({
    required String query,
    required String limit,
    required String related_keywords,
  }) = _SearchQuery;

  factory SearchQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFromJson(json);
}
