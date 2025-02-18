import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/models/banner.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/providers/banner.dart';
import 'package:pokerspot_user_app/common/components/custom_image/custom_image.dart';

class HomeBannerSection extends StatefulHookConsumerWidget {
  const HomeBannerSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomeBannerSection> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(bannerServiceProvider);

    return res.when(
      data: (data) => _buildBanner(images: data),
      loading: () {
        return const AspectRatio(
          aspectRatio: 16 / 9,
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
      error: (error, _) {
        return Center(
          child: Text(
            'Error: $error',
            textAlign: TextAlign.center,
          ),
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
          return CustomImage(
            imageUrl: images[index].imageUrl,
          );
        },
      ),
    );
  }
}
