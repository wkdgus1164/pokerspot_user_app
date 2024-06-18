import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/notice_vac.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/providers/notice.dart';

class HomeNoticeView extends StatefulHookConsumerWidget {
  const HomeNoticeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeNoticeViewState();
}

class _HomeNoticeViewState extends ConsumerState<HomeNoticeView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(noticeServiceProvider);

    return res.when(
      data: (data) {
        final resData = data.items!.first;
        if (data.items!.isEmpty) return const SizedBox();

        return HomeNoticeVac(
          handleClick: _handleClick,
          createdAt: Utils().getFormattedTimeAgo(
            dateTime: resData.createdAt,
          ),
          title: resData.title,
          id: resData.id,
        );
      },
      error: (error, _) {
        Logger().e('Error: ${error.toString()}');
        return const SizedBox();
      },
      loading: () {
        return const SizedBox();
      },
    );
  }

  void _handleClick(id) {
    context.pushNamed(
      CustomRouter.noticeDetail.name,
      pathParameters: {'id': id},
    );
  }
}
