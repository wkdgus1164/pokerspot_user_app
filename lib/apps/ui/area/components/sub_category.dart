import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class AreaSubCategory extends StatelessWidget {
  const AreaSubCategory({
    super.key,
    required this.text,
    required this.handleClick,
  });

  final String text;
  final Function() handleClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleClick,
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: colorGrey50,
                    ),
              ),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: colorGrey90,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
