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
      splashColor: colorGrey95,
      child: Ink(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: colorGrey95),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: colorGrey50,
                      ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                size: 20,
                Icons.keyboard_arrow_right_rounded,
                color: colorGrey90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
