import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

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
      splashColor: colorGrey95,
      child: Ink(
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    colorBrand80.withOpacity(0.8),
                    colorBrand95.withOpacity(0.5),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : const LinearGradient(
                  colors: [colorGrey98, colorGrey98],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: isSelected ? colorBrand20 : colorGrey60,
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
