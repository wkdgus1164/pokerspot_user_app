import 'package:drift/drift.dart' as d;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/game_type_filter_list_page/providers/game_type_fillter.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/common/components/placeholder/empty.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';

class GameTypeFilterListPageArguments {
  final GameType gameType;

  GameTypeFilterListPageArguments({
    required this.gameType,
  });
}

class GameTypeFilterListPage extends StatefulHookConsumerWidget {
  const GameTypeFilterListPage({super.key, required this.args});

  final GameTypeFilterListPageArguments args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameTypeFilterListPageState();
}

class _GameTypeFilterListPageState
    extends ConsumerState<GameTypeFilterListPage> {
  GameTypeFilterListPageArguments get _args => widget.args;

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(
      gameTypeFilterResultProvider.call(gameType: _args.gameType),
    );

    return res.when(
      data: (resData) {
        final data = resData.items;
        ScrollController scrollController = ScrollController();

        scrollController.addListener(
          () {
            if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent) {
              ref.read(storesItemsProvider.notifier).fetchNextData();
            }
          },
        );

        Logger().i('GameTypeFilterListPage\n  data: $data');

        if (data!.isEmpty) {
          return EmptyListPlaceHolder(
            message: '주변에 ${_args.gameType.kr} 홀덤펍이 없어요.',
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('내 주변 ${_args.gameType.kr}'),
          ),
          body: ListView.separated(
            controller: scrollController,
            padding: const EdgeInsets.all(16),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return StoreV2(
                storeImages: data[index].storeImages,
                name: data[index].name,
                address: data[index].address,
                addressDetail: data[index].addressDetail,
                openTime: data[index].openTime,
                closeTime: data[index].closeTime,
                distance: data[index].distance,
                storeGames: data[index].gameMTTItems,
                storeBenefits: data[index].storeBenefits,
                storeTags: data[index].storeTags,
                updatedAt: data[index].updatedAt,
                handleClick: () => _handleClick(model: data[index]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
          ),
        );
      },
      error: (error, stackTrace) {
        Logger().e(error.toString());
        Logger().e(stackTrace.toString());
        return Scaffold(
          appBar: AppBar(
            title: Text('내 주변 ${_args.gameType.kr}'),
          ),
          body: const Expanded(
            child: ErrorPlaceholder(),
          ),
        );
      },
      loading: () {
        return LoadingPlaceholder(
          message: '내 주변 ${_args.gameType.kr} 홀덤펍을 찾고 있어요.',
        );
      },
    );
  }

  void _handleClick({required StoreV2Model model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages.first.url!),
              address: d.Value(model.address),
              openTime: d.Value(model.openTime),
            ),
          );
    }

    ref.invalidate(recentSearchDataProvider);
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {"id": model.id},
    );
  }
}
