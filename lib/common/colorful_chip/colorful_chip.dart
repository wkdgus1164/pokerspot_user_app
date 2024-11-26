import 'package:flutter/material.dart';

enum ColorfulChipTheme {
  red(Color(0xFFFFEBEE), Color(0xFFD32F2F)),
  blue(Color(0xFFE3F2FD), Color(0xFF1976D2)),
  green(Color(0xFFE8F5E9), Color(0xFF388E3C)),
  yellow(Color(0xFFFFFDE7), Color(0xFFFBC02D)),
  ;

  const ColorfulChipTheme(this.backgroundColor, this.foregroundColor);
  final Color backgroundColor, foregroundColor;
}

class ColorfulChip extends StatelessWidget {
  const ColorfulChip({
    super.key,
    required this.theme,
    required this.text,
  });

  final ColorfulChipTheme theme;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        color: theme.backgroundColor,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: theme.foregroundColor,
            ),
      ),
    );
  }
}
