import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class StoreDetailDataLoading extends StatelessWidget {
  const StoreDetailDataLoading({super.key});

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
            '데이터를 불러오는 중...',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorGrey50,
                ),
          ),
        ],
      ),
    );
  }
}
