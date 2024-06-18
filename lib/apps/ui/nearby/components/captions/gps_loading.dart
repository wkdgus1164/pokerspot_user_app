import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class NearbyGpsLoading extends StatelessWidget {
  const NearbyGpsLoading({super.key});

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
          const SizedBox(
            width: 10,
            height: 10,
            child: CircularProgressIndicator.adaptive(),
          ),
          const SizedBox(width: 10),
          Text(
            '위치 정보 수집 중...',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorGrey50,
                ),
          ),
        ],
      ),
    );
  }
}
