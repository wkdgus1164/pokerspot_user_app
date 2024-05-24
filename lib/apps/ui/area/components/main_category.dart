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
      splashColor: colorBrand95,
      child: Ink(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? colorBrand80 : colorGrey95,
            ),
          ),
          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    colorBrand80.withOpacity(0.8),
                    colorBrand95.withOpacity(0.5),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.normal,
                  color: isSelected ? colorBrand20 : colorGrey60,
                ),
          ),
        ),
      ),
    );
  }
}
