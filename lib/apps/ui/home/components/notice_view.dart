import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
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
        if (data.items!.isEmpty) return const SizedBox();
        return InkWell(
          onTap: () {
            context.pushNamed(
              CustomRouter.noticeDetail.name,
              pathParameters: {'id': data.items!.first.id},
            );
          },
          splashColor: Colors.grey.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: colorGrey95,
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '공지사항 · ${Utils().getFormattedTimeAgo(dateTime: data.items!.first.createdAt)}',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: colorGrey60,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          data.items!.first.title,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: colorGrey80,
                  )
                ],
              ),
            ),
          ),
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
}
