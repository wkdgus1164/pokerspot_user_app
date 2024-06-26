import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/global/store.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';

class HomeNearbyStoresListView extends StatefulHookConsumerWidget {
  const HomeNearbyStoresListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      HomeNearbyStoresListViewState();
}

class HomeNearbyStoresListViewState
    extends ConsumerState<HomeNearbyStoresListView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(storesItemsProvider);

    return res.when(
      data: (data) {
        if (data.items!.isEmpty) return const SizedBox();
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '내 주변 추천 펍',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorGrey20,
                    ),
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Store(
                    storeImages: data.items![index].storeImages ?? [],
                    name: data.items![index].name ?? "",
                    address: data.items![index].address ?? "",
                    addressDetail: data.items![index].addressDetail ?? "",
                    openTime: data.items![index].openTime ?? "",
                    closeTime: data.items![index].closeTime ?? "",
                    distance: data.items![index].distance ?? 0.0,
                    storeGames: data.items![index].gameMTTItems ?? [],
                    updatedAt: data.items![index].updatedAt,
                    handleClick: () => _handleClick(model: data.items![index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: data.items!.length,
              ),
            ],
          ),
        );
      },
      error: (error, _) {
        return Text(error.toString());
      },
      loading: () {
        return const SizedBox();
      },
    );
  }

  void _handleClick({required StoreModel model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name!),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages!.first.url!),
              address: d.Value(model.address!),
              openTime: d.Value(model.openTime!),
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
