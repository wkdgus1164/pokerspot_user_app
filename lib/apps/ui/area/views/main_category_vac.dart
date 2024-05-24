import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/area.dart';
import 'package:pokerspot_user_app/apps/ui/area/components/main_category.dart';

class AreaMainCategoryVac extends StatelessWidget {
  const AreaMainCategoryVac({
    super.key,
    required this.handleCityClick,
  });

  final Function(String cityCode) handleCityClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return AreaMainCategory(
            text: regcodes[index].entries.last.value,
            isSelected: true,
            handleClick: () => handleCityClick(
              regcodes[index].entries.first.value,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: regcodes.length,
      ),
    );
  }
}
