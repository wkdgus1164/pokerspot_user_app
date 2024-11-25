import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';

class StoreV2 extends StatelessWidget {
  const StoreV2({
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
    this.storeBenefits,
    this.storeTags,
  });

  final List<StoreImagesModel>? storeImages;
  final String name;
  final String address;
  final String addressDetail;
  final String openTime;
  final String closeTime;
  final double distance;
  final DateTime updatedAt;
  final List<StoreGameMttV2Model> storeGames;
  final Function() handleClick;
  final List<StoreBenefitV2Model>? storeBenefits;
  final List<StoreTagV2Model>? storeTags;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleClick,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(
                      color: colorGrey95,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: storeImages![0].url!,
                    width: 104,
                    height: 104,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SingleChildScrollView(
                        child: Wrap(
                          spacing: 8,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: Colors.red.shade50,
                              ),
                              child: Text(
                                '매일 진행',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      color: Colors.red.shade700,
                                    ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: Colors.red.shade50,
                              ),
                              child: Text(
                                '매일 진행',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      color: Colors.red.shade700,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
