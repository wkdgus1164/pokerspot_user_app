import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/recent_list_item.dart';
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
                        '최근 본 펍',
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
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 16,
                children: data.map(
                  (it) {
                    return HomeRecentListItem(
                      id: it.id,
                      handleclick: _handleItemClick,
                      image: it.image,
                      name: it.name,
                      address: extractFirstTwoWords(it.address),
                      openTime:
                          '${Utils().getFormattedTime(time: it.openTime)} 오픈',
                    );
                  },
                ).toList(),
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

  String extractFirstTwoWords(String sentence) {
    // 1. 문장을 공백을 기준으로 단어로 분리
    List<String> words = sentence.split(' ');

    // 2. 앞의 2개 단어 선택
    List<String> firstTwoWords = words.take(2).toList();

    // 3. 선택된 단어들을 하나의 문자열로 결합
    String result = firstTwoWords.join(' ');

    return result;
  }

  void _handleItemClick(String id) {
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {'id': id},
    );
  }

  Future _handleRemoveAll() {
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
