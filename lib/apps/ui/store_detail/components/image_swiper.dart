import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/global/photo_viewer/photo_viewer_page.dart';

class StoreDetailImageSwiper extends StatelessWidget {
  const StoreDetailImageSwiper({super.key, required this.images});

  final List<StoreImagesDto> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 11 / 16,
      child: Swiper(
        itemCount: images.length,
        autoplay: true,
        loop: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _handleImageClick(context, images[index].url),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: images[index].url,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withAlpha(200),
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
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
