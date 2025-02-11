import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';

class HomeNearbyStoresSection extends StatefulHookConsumerWidget {
  const HomeNearbyStoresSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomeNearbyStoresSection> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(storesItemsProvider);

    return res.when(
      data: (stores) {
        if (stores.items == null || stores.items!.isEmpty) {
          return const SizedBox.shrink();
        }

        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '내 주변 추천 펍',
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return StoreListItem(
                    store: stores.items![index],
                    handleClick: () => _handleClick(
                      model: stores.items![index],
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 10, height: 10),
                itemCount: stores.items!.length,
              ),
            ],
          ),
        );
      },
      error: (error, _) => ErrorPlaceholder(error: error.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  void _handleClick({required StoreDto model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name ?? ''),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages?.first.url ?? ''),
              address: d.Value(model.address ?? ''),
              openTime: d.Value(model.openTime ?? ''),
            ),
          );
    }

    ref.invalidate(recentSearchDataProvider);

    context.push(
      CustomRouter.store.path,
      extra: StoreDetailPageArgs(id: model.id),
    );
  }
}
