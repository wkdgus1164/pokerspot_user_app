import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

// ignore: camel_case_types
class StoreListItem_GameListItemRow extends StatelessWidget {
  const StoreListItem_GameListItemRow({
    super.key,
    required this.title,
    required this.description,
    this.caption,
  });

  final String title;
  final String description;
  final String? caption;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: colorGrey95,
          ),
          child: Text(
            title,
            style: textTheme.labelSmall!.copyWith(
              color: colorGrey40,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 8),
        Text(description, style: textTheme.bodyMedium),
        const SizedBox(width: 8),
        Text(
          caption ?? '',
          style: textTheme.labelMedium!.copyWith(
            color: colorGrey50,
          ),
        ),
      ],
    );
  }
}
