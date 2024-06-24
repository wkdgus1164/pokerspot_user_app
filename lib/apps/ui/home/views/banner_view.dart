import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/home/models/banner.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/banner.dart';

class HomeBannerView extends StatefulHookConsumerWidget {
  const HomeBannerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeBannerViewState();
}

class _HomeBannerViewState extends ConsumerState<HomeBannerView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(bannerServiceProvider);

    return res.when(
      data: (data) {
        return _buildBanner(images: data);
      },
      loading: () {
        return const AspectRatio(
          aspectRatio: 16 / 9,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      error: (error, stack) {
        return Center(
          child: Text('Error: $error'),
        );
      },
    );
  }

  AspectRatio _buildBanner({required List<BannerModel> images}) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        itemCount: images.length,
        autoplay: true,
        loop: true,
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: images[index].imageUrl,
          );
        },
      ),
    );
  }
}
