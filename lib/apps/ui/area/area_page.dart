import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/area/views/main_category_view.dart';
import 'package:pokerspot_user_app/apps/ui/area/views/sub_category_view.dart';

class AreaPage extends StatefulHookConsumerWidget {
  const AreaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AreaPageState();
}

class _AreaPageState extends ConsumerState<AreaPage> {
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
