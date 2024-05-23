import 'package:pokerspot_user_app/apps/ui/search/models/search.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.g.dart';

@riverpod
class SearchResult extends _$SearchResult {
  @override
  FutureOr<List<SearchResultModel>> build() async {
    return _fetch();
  }

  Future<List<SearchResultModel>> _fetch() async {
    final searchResultModel = ref.read(searchResultProvider);
    if (searchResultModel.asData?.value == null) {
      throw Exception('Search result is not available');
    }

    return searchResultModel.asData!.value;
  }
}
