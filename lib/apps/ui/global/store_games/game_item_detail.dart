import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class StoreGameItemDetail extends StatelessWidget {
  const StoreGameItemDetail({
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
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: colorGrey40,
                ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: colorGrey50,
              ),
        ),
        const SizedBox(width: 12),
        Text(
          caption ?? '',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: colorGrey60,
              ),
        ),
      ],
    );
  }
}
