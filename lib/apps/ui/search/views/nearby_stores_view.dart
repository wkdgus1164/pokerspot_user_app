import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/nearby_store_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';

class NearbyStoresView extends StatefulHookConsumerWidget {
  const NearbyStoresView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NearbyStoresViewState();
}

class _NearbyStoresViewState extends ConsumerState<NearbyStoresView> {
  @override
  Widget build(BuildContext context) {
    final result = ref.watch(storesItemsProvider);

    return result.when(
      data: (resData) {
        final data = resData.items;

        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return NearbyStoreItem(
              name: data?[index].name ?? "",
              distance: data?[index].distance ?? 0,
              handleClick: () => _handleNearbyStoreClick(model: data![index]),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: data?.length ?? 0,
          shrinkWrap: true,
        );
      },
      error: (error, _) {
        return const ErrorPlaceholder();
      },
      loading: () {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator.adaptive(),
              const SizedBox(height: 16),
              Text(
                '주변 매장 정보를 가져오고 있어요.\n잠시만 기다려주세요.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: colorGrey70,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _handleNearbyStoreClick({required StoreModel model}) {
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
