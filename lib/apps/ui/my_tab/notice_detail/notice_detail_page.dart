import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice/models/notice.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice_detail/providers/notice_detail.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';

class MyNoticeDetailPageArgs {
  final String id;

  MyNoticeDetailPageArgs({required this.id});
}

class MyNoticeDetailPage extends StatefulHookConsumerWidget {
  const MyNoticeDetailPage({super.key, required this.args});

  final MyNoticeDetailPageArgs args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<MyNoticeDetailPage> {
  String get _noticeId => widget.args.id;

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(noticeDetailServiceProvider.call(_noticeId));

    return res.when(
      data: (data) {
        return _buildNoticeDetail(data: data);
      },
      loading: () {
        return const LoadingPlaceholder(
          loadingHeaderText: '공지사항 상세',
        );
      },
      error: (error, _) {
        return ErrorPlaceholder(error: error.toString());
      },
    );
  }

  Scaffold _buildNoticeDetail({required NoticeModel data}) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항 상세'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(data.title, style: textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(
              '${data.createdAt.year}. ${data.createdAt.month}. ${data.createdAt.day}.',
              style: textTheme.labelLarge!.copyWith(color: colorGrey60),
            ),
            const SizedBox(height: 16),
            Text(
              data.description,
              style: textTheme.bodyLarge!.copyWith(color: colorGrey40),
            ),
          ],
        ),
      ),
    );
  }
}
