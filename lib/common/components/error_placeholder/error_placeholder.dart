import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({super.key});

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
            '예상치 못한 오류가 발생했어요.',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: colorGrey60,
                ),
          ),
        ],
      ),
    );
  }
}
