import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/components/recent_view_section/recent_view_list_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';

class HomeRecentViewStoresSection extends StatefulHookConsumerWidget {
  const HomeRecentViewStoresSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomeRecentViewStoresSection> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(recentSearchDataProvider);

    return res.when(
      data: (stores) {
        if (stores.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _renderToolbar(),
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 16,
                children: stores.map((store) {
                  return HomeRecentViewListItem(
                    handleclick: (id) {
                      context.push(
                        CustomRouter.store.path,
                        extra: StoreDetailPageArgs(id: id),
                      );
                    },
                    store: store,
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
      error: (_, __) => const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
    );
  }

  Widget _renderToolbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최근 본 펍',
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: _handleDeleteAll,
                child: Text(
                  '전체 삭제',
                  style: textTheme.titleSmall!.copyWith(
                    color: colorGrey60,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future _handleDeleteAll() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('최근 본 매장 전체 삭제'),
          content: const Text('최근 본 매장 목록을 모두 삭제하시겠어요?\n삭제된 내용은 복구할 수 없어요.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(msg: '최근 본 매장을 모두 삭제했어요.');
                ref.read(recentSearchDaoProvider).deleteAll();
                ref.invalidate(recentSearchDataProvider);
                Navigator.pop(context);
              },
              child: const Text('삭제하기'),
            ),
          ],
        );
      },
    );
  }
}
