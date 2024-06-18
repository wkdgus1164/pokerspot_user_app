import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/filter.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/views/list_view.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/views/location_vac.dart';

class NearbyPage extends StatefulHookConsumerWidget {
  const NearbyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NearbyPageState();
}

class _NearbyPageState extends ConsumerState<NearbyPage> {
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
          NearbyLocationView(),
          NearbyListView(),
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
              return const NearbySearchFilterSheet();
            },
          );
        },
        icon: const Icon(Icons.tune_rounded),
        label: const Text('상세 검색'),
      ),
    );
  }
}
