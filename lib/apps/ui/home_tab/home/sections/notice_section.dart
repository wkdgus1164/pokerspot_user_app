import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/components/notice/notice_vac.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice/providers/notice.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice_detail/notice_detail_page.dart';

class HomeNoticeSection extends StatefulHookConsumerWidget {
  const HomeNoticeSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomeNoticeSection> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(noticeServiceProvider);

    return res.when(
      data: (notices) {
        final resData = notices.items!.first;
        final createdAt = Utils().getFormattedTimeAgo(
          dateTime: resData.createdAt,
        );

        if (notices.items!.isEmpty) return const SizedBox.shrink();

        return HomeNoticeVac(
          handleClick: _handleClick,
          createdAt: createdAt,
          title: resData.title,
          id: resData.id,
        );
      },
      error: (error, _) {
        Logger().e('Error: ${error.toString()}');
        return const SizedBox.shrink();
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }

  void _handleClick(id) {
    context.push(
      CustomRouter.noticeDetail.path,
      extra: MyNoticeDetailPageArgs(id: id),
    );
  }
}
