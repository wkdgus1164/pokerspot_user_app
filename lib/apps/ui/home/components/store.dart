import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/tournament.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/captions/image_load_failed.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({
    super.key,
    this.storeImages,
    required this.name,
    required this.address,
    required this.addressDetail,
    required this.openTime,
    required this.closeTime,
    required this.distance,
    required this.storeGames,
  });

  final List<StoreImageDto>? storeImages;
  final String name;
  final String address;
  final String addressDetail;
  final String openTime;
  final String closeTime;
  final double distance;
  final List<GameMTTDto> storeGames;

  @override
  Widget build(BuildContext context) {
    final openTimeCalculated = int.parse(openTime.substring(0, 2)) > 12
        ? '오후 ${int.parse(openTime.substring(0, 2)) - 12}'
        : '오후 ${int.parse(openTime.substring(0, 2))}';

    return Container(
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
            imageUrl: storeImages!.isNotEmpty ? storeImages!.first.url : "",
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(name, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 4),
                Text(
                  '$address · $openTimeCalculated시 오픈',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: colorGrey60,
                      ),
                ),
                const SizedBox(height: 24),
                StoreListItemGames(games: storeGames),
              ],
            ),
          ),
        ],
      ),
    );
  }
}