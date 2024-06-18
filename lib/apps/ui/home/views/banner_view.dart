import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeBannerView extends StatefulHookConsumerWidget {
  const HomeBannerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeBannerViewState();
}

class _HomeBannerViewState extends ConsumerState<HomeBannerView> {
  final List<String> images = [
    'https://plus.unsplash.com/premium_photo-1718088301356-d762d95d754a',
    'https://plus.unsplash.com/premium_photo-1718088301356-d762d95d754a',
    'https://plus.unsplash.com/premium_photo-1718088301356-d762d95d754a',
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        itemCount: images.length,
        autoplay: true,
        loop: true,
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: images[index],
          );
        },
      ),
    );
  }
}
