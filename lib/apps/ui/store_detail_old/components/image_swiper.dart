import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/photo_viewer/photo_viewer_page.dart';

class StoreDetailImageSwiper extends StatelessWidget {
  const StoreDetailImageSwiper({super.key, required this.images});

  final List<StoreImagesModel> images;

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
            return GestureDetector(
              onTap: () => _handleImageClick(context, images[index].url ?? ""),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: images[index].url ?? "",
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleImageClick(BuildContext context, String imageUrl) {
    context.push(
      CustomRouter.photoView.path,
      extra: PhotoViewerPageArguments(
        imageUrl: imageUrl,
      ),
    );
  }
}
