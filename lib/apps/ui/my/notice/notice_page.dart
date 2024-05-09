import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class MyNoticePage extends StatefulHookConsumerWidget {
  const MyNoticePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyNoticePageState();
}

class _MyNoticePageState extends ConsumerState<MyNoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Ink(
            child: InkWell(
              splashColor: colorGrey95,
              onTap: _handleItemClick,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '금융결제원 재해복구훈련에 따른 자동이체통합관리업무 중단 안내 (5/11)',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: colorGrey20,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${DateTime.now().year.toString()}. ${DateTime.now().month.toString()}. ${DateTime.now().day.toString()}',
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
        itemCount: 10,
      ),
    );
  }

  void _handleItemClick() {
    context.push(CustomRouter.noticeDetail.path);
  }
}
