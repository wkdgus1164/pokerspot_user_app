import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'keyword.g.dart';
part 'keyword.freezed.dart';

@freezed
class SearchKeywordModel with _$SearchKeywordModel {
  factory SearchKeywordModel({
    @Default("") String keyword,
  }) = _SearchKeywordModel;

  SearchKeywordModel._();
}

@riverpod
class SearchKeyword extends _$SearchKeyword {
  @override
  SearchKeywordModel build() {
    return SearchKeywordModel(keyword: "");
  }

  void setSearchKeyword(String keyword) {
    state = state.copyWith(keyword: keyword);
    Logger().i('Keyword: $keyword');
    ref.keepAlive();
  }

  void clearSearchKeyword() {
    state = state.copyWith(keyword: "");
  }
}
