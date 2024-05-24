import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/dto/search_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/dto/search_query_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/rapid_api.dart';
import 'package:pokerspot_user_app/apps/ui/search/models/search.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.g.dart';

@riverpod
class SearchResult extends _$SearchResult {
  @override
  FutureOr<List<SearchResultModel>> build() async {
    return _fetch();
  }

  Future<List<SearchResultModel>> _fetch() async {
    final res = await ref.read(rapidApiProvider).search(
          SearchQuery(
            query: ref.read(searchKeywordProvider).keyword,
            limit: '50',
            related_keywords: 'true',
          ),
        );
    Logger().i('res : $res');
    return res.results.toModels();
  }
}

extension _SearchListResultModelMapperExtension on List<SearchResultDto> {
  List<SearchResultModel> toModels() {
    return map((e) => e.toModel()).toList();
  }
}

extension _SearchResultModelMapperExtension on SearchResultDto {
  SearchResultModel toModel() {
    return SearchResultModel(
      position: position,
      url: url,
      title: title,
      description: description,
    );
  }
}
