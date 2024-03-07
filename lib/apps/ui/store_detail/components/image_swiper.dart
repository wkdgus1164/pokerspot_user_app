import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/models/model.dart';

class StoreDetailImageSwiper extends StatelessWidget {
  const StoreDetailImageSwiper({super.key, required this.images});

  final List<StoreDetailStoreImagesModel> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemCount: images.length,
          autoplay: true,
          loop: true,
          viewportFraction: 0.8,
          scale: 0.9,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: images[index].url,
              ),
            );
          },
        ),
      ),
    );
  }
}
