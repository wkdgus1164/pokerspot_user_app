import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recent_search.g.dart';
part 'recent_search.freezed.dart';

@freezed
class RecentSearchModel with _$RecentSearchModel {
  factory RecentSearchModel({
    required String id,
    required String name,
    required String image,
    required String address,
    required String openTime,
    required DateTime createdAt,
  }) = _RecentSearchModel;
}

@riverpod
class RecentSearchData extends _$RecentSearchData {
  @override
  Future<List<RecentSearchModel>> build() async {
    final data = await ref.read(recentSearchDaoProvider).findAll();

    return data
        .map((e) => RecentSearchModel(
              id: e.id,
              name: e.name,
              createdAt: e.createdAt,
              image: e.image,
              address: e.address,
              openTime: e.openTime,
            ))
        .toList();
  }

  RecentSearchModel? find(String id) {
    final data = state.asData?.value;
    if (data == null) return null;

    return data.firstWhereOrNull(
      (it) => it.id == id,
    );
  }
}
