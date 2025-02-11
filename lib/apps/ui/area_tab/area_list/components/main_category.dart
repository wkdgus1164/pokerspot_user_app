import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class AreaMainCategory extends StatelessWidget {
  const AreaMainCategory({
    super.key,
    required this.text,
    required this.isSelected,
    required this.handleClick,
  });

  final String text;
  final bool isSelected;
  final Function() handleClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleClick,
      splashColor: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : colorGrey98,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium!.copyWith(
                  color: isSelected ? colorGrey20 : colorGrey60,
                ),
              ),
            ),
            const Divider(color: colorGrey95),
          ],
        ),
      ),
    );
  }
}
