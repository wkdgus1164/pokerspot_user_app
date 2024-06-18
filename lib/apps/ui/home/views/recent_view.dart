import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';

class HomeRecentStoresListview extends StatefulHookConsumerWidget {
  const HomeRecentStoresListview({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeRecentStoresListviewState();
}

class _HomeRecentStoresListviewState
    extends ConsumerState<HomeRecentStoresListview> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(recentSearchDataProvider);

    return res.when(
      data: (data) {
        if (data.isEmpty) return const SizedBox();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '최근 방문한 펍',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorGrey20,
                                ),
                      ),
                      GestureDetector(
                        onTap: _handleRemoveAll,
                        child: Text(
                          '전체 삭제',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: colorGrey60,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                children: data
                    .map((it) => RawChip(
                          label: Text(it.name),
                          onPressed: () => _handleItemClick(id: it.id),
                        ))
                    .toList(),
              ),
            ),
          ],
        );
      },
      error: (error, _) {
        return const SizedBox();
      },
      loading: () {
        return const SizedBox();
      },
    );
  }

  void _handleItemClick({required String id}) {
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {'id': id},
    );
  }

  void _handleRemoveAll() {
    Fluttertoast.showToast(msg: '최근 방문한 매장을 모두 삭제했어요.');
    ref.read(recentSearchDaoProvider).deleteAll();
    ref.invalidate(recentSearchDataProvider);
  }
}
