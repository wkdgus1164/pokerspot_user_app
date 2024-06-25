import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSelectionItem extends StatelessWidget {
  const HomeSelectionItem({
    super.key,
    required this.handleClick,
    required this.title,
    required this.primaryColor,
    required this.tonalColor,
    required this.iconPath,
  });

  final Function() handleClick;
  final Color primaryColor;
  final Color tonalColor;
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: handleClick,
        splashColor: primaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: tonalColor,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SvgPicture.asset(iconPath),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
