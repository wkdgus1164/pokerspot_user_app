import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/views/filter_view.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/views/list_view.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/views/location_vac.dart';

class NearbyPage extends StatefulHookConsumerWidget {
  const NearbyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<NearbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          Assets.logoTextMinifiedColor.path,
          width: 90,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CustomRouter.search.path);
            },
            icon: SvgPicture.asset(
              Assets.searchOn.path,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          // 위치 정보
          NearbyLocationView(),

          // 필터
          NearbyFilterView(),

          // 리스트
          NearbyListView(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push(CustomRouter.nearbyFilter.path);
        },
        icon: const Icon(Icons.tune_rounded),
        label: const Text('상세 검색'),
      ),
    );
  }
}
