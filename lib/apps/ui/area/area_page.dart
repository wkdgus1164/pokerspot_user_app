import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_service.dart';
import 'package:pokerspot_user_app/apps/ui/area/views/main_category_vac.dart';
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
      body: Row(
        children: [
          AreaMainCategoryVac(handleCityClick: _handleCityClick),
          const AreaSubCategoryView(),
        ],
      ),
    );
  }

  void _handleCityClick(String cityCode) {
    final newCityCode = '${cityCode.substring(0, 2)}*00000';
    Logger().i('newCityCode : $newCityCode');
    ref.read(areaProvider.notifier).setCityCode(cityCode: newCityCode);
    ref.invalidate(areaServiceProvider);
  }
}
