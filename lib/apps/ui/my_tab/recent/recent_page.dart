import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/components/recent_view_section/recent_view_list_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';
import 'package:pokerspot_user_app/common/components/placeholder/empty.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';

class MyRecentPage extends StatefulHookConsumerWidget {
  const MyRecentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<MyRecentPage> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(recentSearchDataProvider);

    return res.when(
      data: (data) {
        if (data.isEmpty) {
          return const EmptyListPlaceHolder(
            appBarTitle: Text('최근 본 펍'),
            message: '최근 본 펍이 없어요.',
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('최근 본 펍'),
            actions: [
              IconButton(
                onPressed: () {
                  _showDeleteRecentStoreDialog(context);
                },
                icon: const Text('전체 삭제'),
              ),
            ],
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return HomeRecentViewListItem(
                handleclick: _handleItemClick,
                store: data[index],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
          ),
        );
      },
      error: (error, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('최근 본 펍'),
          ),
          body: const Expanded(
            child: Center(
              child: ErrorPlaceholder(),
            ),
          ),
        );
      },
      loading: () {
        return const LoadingPlaceholder(
          loadingHeaderText: '최근 본 펍',
          message: '최근 본 펍을 불러오는 중이에요.',
        );
      },
    );
  }

  Future<void> _showDeleteRecentStoreDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('최근 본 펍 전체 삭제'),
          content: const Text('최근 본 펍을 모두 삭제하시겠어요?\n삭제된 내용은 복구할 수 없어요.'),
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

  _handleItemClick(String id) {
    context.push(
      CustomRouter.store.path,
      extra: StoreDetailPageArgs(id: id),
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
}
