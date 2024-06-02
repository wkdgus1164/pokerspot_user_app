import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/models/notice.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice_detail/providers/notice_detail.dart';

class MyNoticeDetailPage extends StatefulHookConsumerWidget {
  const MyNoticeDetailPage({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyNoticeDetailPageState();
}

class _MyNoticeDetailPageState extends ConsumerState<MyNoticeDetailPage> {
  String get _noticeId => widget.id;

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(noticeDetailServiceProvider.call(_noticeId));

    return res.when(
      data: (data) {
        return _buildNoticeDetail(data: data);
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            title: const Text('공지사항 상세'),
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
            Text(
              data.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: colorGrey20,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              '${data.createdAt.year}. ${data.createdAt.month}. ${data.createdAt.day}.',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              data.description,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: colorGrey40,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
