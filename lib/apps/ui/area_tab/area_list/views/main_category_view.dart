import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/area.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/components/main_category.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/providers/area_service.dart';

class AreaMainCategoryView extends StatefulHookConsumerWidget {
  const AreaMainCategoryView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<AreaMainCategoryView> {
  @override
  Widget build(BuildContext context) {
    final area = ref.watch(areaDataServiceProvider);

    return ListView.builder(
      itemBuilder: (context, index) {
        return AreaMainCategory(
          text: regcodes[index].entries.last.value,
          isSelected: area.name == regcodes[index].entries.last.value,
          handleClick: () => _handleCityClick(
            regcodes[index].entries.first.value,
            regcodes[index].entries.last.value,
          ),
        );
      },
      itemCount: regcodes.length,
    );
  }

  void _handleCityClick(String cityCode, String cityName) {
    final newCityCode = '${cityCode.substring(0, 2)}*00000';

    ref.read(areaDataServiceProvider.notifier).setCityCode(
          regCode: newCityCode,
        );

    ref.read(areaDataServiceProvider.notifier).setCityName(
          name: cityName,
        );

    ref.invalidate(areaServiceProvider);
  }
}
