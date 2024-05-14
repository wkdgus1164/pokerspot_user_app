import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/filter.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/list_view.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/location_vac.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(locationServiceProvider);

    return res.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: SvgPicture.asset(
              Assets.logoTextMinifiedColor.path,
              width: 90,
            ),
          ),
          body: Column(
            children: [
              HomeLocationVac(locationModel: data),
              const HomeListView(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                showDragHandle: true,
                isScrollControlled: true,
                isDismissible: true,
                enableDrag: true,
                backgroundColor: colorGrey100,
                builder: (context) {
                  return const HomeSearchFilterSheet();
                },
              );
            },
            icon: const Icon(Icons.tune_rounded),
            label: const Text('상세 검색'),
          ),
        );
      },
      error: (error, stackTrace) {
        return Container();
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            title: SvgPicture.asset(
              Assets.logoTextMinifiedColor.path,
              width: 90,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator.adaptive(),
                const SizedBox(height: 16),
                Text(
                  '위치 정보를 가져오고 있어요.\n잠시만 기다려주세요.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: colorGrey70,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
