import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class HomeGpsError extends StatelessWidget {
  const HomeGpsError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorGrey98,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, color: colorGrey50),
          const SizedBox(width: 10),
          Text(
            '위치 정보 수집에 실패했어요.',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorGrey50,
                ),
          ),
        ],
      ),
    );
  }
}
