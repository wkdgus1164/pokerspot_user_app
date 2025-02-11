import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';

class HomeRecentViewListItem extends StatelessWidget {
  const HomeRecentViewListItem({
    super.key,
    required this.handleclick,
    required this.store,
  });

  final Function(String id) handleclick;
  final RecentSearchModel store;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleclick(store.id),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: _decoration(),
        clipBehavior: Clip.antiAlias,
        child: _renderContents(),
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      border: Border.all(color: colorGrey95),
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    );
  }

  Row _renderContents() {
    return Row(
      children: [
        _renderThumbnail(
          imageUrl: store.image,
        ),
        _renderStoreInformation(
          name: store.name,
          address: store.address,
          openTime: store.openTime,
        ),
      ],
    );
  }

  SizedBox _renderThumbnail({
    required String imageUrl,
  }) {
    return SizedBox(
      width: 100,
      height: 100,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Expanded _renderStoreInformation({
    required String name,
    required String address,
    required String openTime,
  }) {
    final openTimeFormatted = Utils().getFormattedTime(time: openTime);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name,
              style: textTheme.titleMedium!.copyWith(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              address,
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey60,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '$openTimeFormatted 오픈',
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey60,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
