import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';

class RecentSearchView extends StatefulHookConsumerWidget {
  const RecentSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecentSearchViewState();
}

class _RecentSearchViewState extends ConsumerState<RecentSearchView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(recentSearchDataProvider);

    return res.when(
      data: (data) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '최근 본 펍',
                    style: textTheme.titleSmall!.copyWith(
                      color: colorGrey40,
                    ),
                  ),
                  if (data.isNotEmpty) ...[
                    GestureDetector(
                      onTap: _handleRemoveAll,
                      child: Text(
                        '전체 삭제',
                        style: textTheme.titleSmall!.copyWith(
                          color: colorGrey60,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (data.isEmpty) ...[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    '최근 본 매장이 없어요.',
                    style: textTheme.labelLarge!.copyWith(
                      color: colorGrey60,
                    ),
                  ),
                ),
              ),
            ],
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
            )
          ],
        );
      },
      loading: () {
        return const Padding(
          padding: EdgeInsets.all(8),
          child: CircularProgressIndicator.adaptive(),
        );
      },
      error: (error, stackTrace) {
        return const Center(
          child: Text('최근 본 매장이 없어요.'),
        );
      },
    );
  }

  void _handleItemClick({required String id}) {
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {'id': id},
    );
  }

  Future<void> _handleRemoveAll() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('최근 본 매장 전체 삭제'),
          content: const Text('최근 본 매장 목록을 모두 삭제하시겠어요?\n삭제된 내용은 복구할 수 없어요.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
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
