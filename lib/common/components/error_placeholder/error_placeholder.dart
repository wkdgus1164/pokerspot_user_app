import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    super.key,
    this.caption = '잠시 후 다시 시도해 주세요.',
  });

  final String? caption;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.info_rounded,
            color: colorGrey80,
            size: 60,
          ),
          const SizedBox(height: 16),
          Text(
            caption!,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: colorGrey60,
                ),
          ),
        ],
      ),
    );
  }
}
