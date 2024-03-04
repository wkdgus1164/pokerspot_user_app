import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/list_view.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/location_view.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          Assets.logoTextMinifiedColor.path,
          width: 90,
        ),
      ),
      body: const Column(
        children: [
          HomeLocationView(),
          HomeListView(),
        ],
      ),
    );
  }
}
