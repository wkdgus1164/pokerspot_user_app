import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class StoreDetailTypeAndTitle extends StatelessWidget {
  const StoreDetailTypeAndTitle({
    super.key,
    required this.type,
    required this.title,
  });

  final String type;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: colorBrand95,
          ),
          child: Text(
            type,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: colorBrand50,
                ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
