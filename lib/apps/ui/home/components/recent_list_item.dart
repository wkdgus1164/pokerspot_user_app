import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';

class HomeRecentListItem extends StatelessWidget {
  const HomeRecentListItem({
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
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 20,
              offset: Offset(4, 4),
              spreadRadius: 0,
            ),
          ],
          color: Colors.white,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: CachedNetworkImage(
                  imageUrl: store.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    store.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${store.address}\n${Utils().getFormattedTime(time: store.openTime)} 오픈',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey60,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
