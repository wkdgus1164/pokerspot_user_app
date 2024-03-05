import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class StoreDetailImageSwiper extends StatelessWidget {
  const StoreDetailImageSwiper({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemCount: 10,
          viewportFraction: 0.8,
          scale: 0.9,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorBrand60,
              ),
            );
          },
        ),
      ),
    );
  }
}
