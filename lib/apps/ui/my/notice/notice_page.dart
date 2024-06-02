import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/models/notice.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/providers/notice.dart';

class MyNoticePage extends StatefulHookConsumerWidget {
  const MyNoticePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyNoticePageState();
}

class _MyNoticePageState extends ConsumerState<MyNoticePage> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(noticeServiceProvider);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          ref.read(noticeServiceProvider.notifier).fetchNextData();
        }
      },
    );

    return res.when(
      data: (data) {
        return buildList(data: data.items!);
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            title: const Text('공지사항'),
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      error: (error, _) {
        return Center(
          child: Text('Error: $error'),
        );
      },
    );
  }

  Widget buildList({required List<NoticeModel> data}) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항'),
      ),
      body: ListView.separated(
        controller: scrollController,
        itemBuilder: (context, index) {
          return Ink(
            child: InkWell(
              onTap: () => _handleItemClick(id: data[index].id),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      data[index].title,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: colorGrey20,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${data[index].createdAt.year}. ${data[index].createdAt.month}. ${data[index].createdAt.day}.',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey60,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: data.length,
      ),
    );
  }

  void _handleItemClick({required String id}) {
    context.pushNamed(
      CustomRouter.noticeDetail.name,
      pathParameters: {'id': id},
    );
  }
}
