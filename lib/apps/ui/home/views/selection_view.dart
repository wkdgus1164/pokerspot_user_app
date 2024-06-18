import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/selection_item.dart';

class HomeSelectionView extends StatelessWidget {
  const HomeSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeSelectionItem(
          primaryColor: const Color(0xff709CED),
          tonalColor: const Color(0xffEFF4FD),
          handleClick: () {},
          title: '데일리 토너',
          iconPath: Assets.gameDaily.path,
        ),
        const SizedBox(width: 16),
        HomeSelectionItem(
          primaryColor: const Color(0xffBA66E0),
          tonalColor: const Color(0xffF7EEFB),
          handleClick: () {},
          title: 'GTD 토너',
          iconPath: Assets.gameGTD.path,
        ),
      ],
    );
  }
}
