import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper_v2.dart';

class StoreDetailSliverAppBarFlexibleSpaceBar extends StatelessWidget {
  const StoreDetailSliverAppBarFlexibleSpaceBar({
    super.key,
    required this.storeImages,
    required this.distance,
  });

  final List<StoreImagesModel> storeImages;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        alignment: Alignment.bottomRight,
        children: [
          StoreDetailImageSwiperV2(
            images: storeImages,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            margin: const EdgeInsets.only(
              right: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white.withOpacity(0.7),
            ),
            child: Wrap(
              spacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(
                  Icons.gps_fixed_rounded,
                  color: colorGrey20,
                  size: 14,
                ),
                Text(
                  '여기에서 ${Utils().getFormattedDistance(distance: distance)}',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: colorGrey20,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
