import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/bottom_navigation/providers/page_index.dart';

class HomeCTAButtonView extends StatefulHookConsumerWidget {
  const HomeCTAButtonView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomeCTAButtonView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: colorBrand90,
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      onTap: () {
        ref
            .read(bottomNavigationPageIndexDataProvider.notifier)
            .setPageIndex(1);

        if (kReleaseMode) {
          FirebaseAnalytics.instance.logEvent(
            name: 'home_cta_button_click',
            parameters: {
              'tab_index': ref
                  .read(bottomNavigationPageIndexDataProvider)
                  .index
                  .toString()
            },
          );
        }
      },
      child: Ink(
        decoration: const BoxDecoration(
          color: colorBrand95,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: const BoxDecoration(
                        color: colorBrand90,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Text(
                        'NEW',
                        style: textTheme.labelSmall!.copyWith(
                          color: colorBrand60,
                        ),
                      ),
                    ),
                    Text(
                      '지금 운영 중인 매장을 찾고 싶다면',
                      style: textTheme.labelMedium!.copyWith(
                        color: colorBrand50,
                      ),
                    ),
                    Text(
                      '상세 검색하기',
                      style: textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorBrand50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.chevron_right_rounded,
                color: colorBrand80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
