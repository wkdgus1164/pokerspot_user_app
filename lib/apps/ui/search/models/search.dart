import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
class SearchListResultModel with _$SearchListResultModel {
  factory SearchListResultModel({
    required String search_term,
    required String? knowledge_panel,
    required List<SearchResultModel> results,
  }) = _SearchListResultModel;
}

@freezed
class SearchResultModel with _$SearchResultModel {
  factory SearchResultModel({
    required int position,
    required String url,
    required String title,
    required String description,
  }) = _SearchResultModel;
}
