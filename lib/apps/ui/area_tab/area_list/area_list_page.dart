import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/views/main_category_view.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/views/sub_category_view.dart';

class AreaListPage extends StatefulHookConsumerWidget {
  const AreaListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<AreaListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('지역으로 찾기'),
      ),
      body: const Row(
        children: [
          Expanded(
            flex: 4,
            child: AreaMainCategoryView(),
          ),
          Expanded(
            flex: 6,
            child: AreaSubCategoryView(),
          ),
        ],
      ),
    );
  }
}
