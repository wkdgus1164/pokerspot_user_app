import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
class SearchResultModel with _$SearchResultModel {
  factory SearchResultModel({
    required String id,
    required String name,
  }) = _SearchResultModel;
}
