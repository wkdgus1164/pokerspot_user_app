import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_list.dart';
import 'package:pokerspot_user_app/common/components/placeholder/image_load_failed.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';

class Store extends StatelessWidget {
  const Store({
    super.key,
    this.storeImages,
    required this.name,
    required this.address,
    required this.addressDetail,
    required this.openTime,
    required this.closeTime,
    required this.distance,
    required this.storeGames,
    required this.handleClick,
    required this.updatedAt,
  });

  final List<StoreImagesModel>? storeImages;
  final String name;
  final String address;
  final String addressDetail;
  final String openTime;
  final String closeTime;
  final double distance;
  final DateTime updatedAt;
  final List<StoreGamesModel> storeGames;
  final Function() handleClick;

  @override
  Widget build(BuildContext context) {
    final openTimeCalculated = int.parse(openTime.substring(0, 2)) > 12
        ? '오후 ${int.parse(openTime.substring(0, 2)) - 12}'
        : '오후 ${int.parse(openTime.substring(0, 2))}';

    return GestureDetector(
      onTap: handleClick,
      child: Container(
        decoration: BoxDecoration(
          color: colorGrey100,
          border: Border.all(color: colorGrey95),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 20,
              offset: Offset(4, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CachedNetworkImage(
                  placeholder: (context, url) {
                    return const SizedBox(
                      width: double.infinity,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    );
                  },
                  errorWidget: (_, __, ___) => const ImageLoadFailed(),
                  imageUrl: storeImages?.first.url ?? "",
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        color: Colors.white,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${Utils().getFormattedDistance(distance: distance)} 주변에 있어요.',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(
                    '$address · $openTimeCalculated시 오픈\n${Utils().getFormattedTimeAgo(dateTime: updatedAt)} 최종 업데이트',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey60,
                        ),
                  ),
                  const SizedBox(height: 24),
                  StoreGameList(
                    games: storeGames,
                    scrollDirection: Axis.horizontal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
