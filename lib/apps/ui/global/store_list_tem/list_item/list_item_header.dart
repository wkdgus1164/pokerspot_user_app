import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/common/colorful_chip/colorful_chip.dart';

class StoreListItemHeader extends StatelessWidget {
  const StoreListItemHeader({
    super.key,
    required this.store,
  });

  final StoreDto store;

  @override
  Widget build(BuildContext context) {
    final String updatedAtString =
        Utils().getFormattedTimeAgo(dateTime: store.updatedAt);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Store Image
          _buildStoreImage(store.storeImages.first.url),
          const SizedBox(width: 16),

          // Store Information
          _buildStoreInformation(
            name: store.name,
            address: store.address,
            openTime: store.openTime ?? '',
            updatedAtString: updatedAtString,
          ),
        ],
      ),
    );
  }

  Expanded _buildStoreInformation({
    required String name,
    required String address,
    required String openTime,
    required String updatedAtString,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildBenefits(store.storeBenefits),
          const SizedBox(height: 4),
          Text(
            name,
            style: textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            address,
            style: textTheme.labelMedium!.copyWith(color: colorGrey60),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${Utils().getFormattedTime(time: openTime)} 오픈 · $updatedAtString 최종 업데이트',
            style: textTheme.labelMedium!.copyWith(color: colorGrey60),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  } // Store Image Widget

  Widget _buildStoreImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: colorGrey95),
      ),
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: 104,
        height: 104,
        fit: BoxFit.cover,
      ),
    );
  }

// Benefits Display Widget
  Widget _buildBenefits(List<StoreBenefitsDto> benefits) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            children: _getBenefitChips(benefits),
          ),
        ),
      ],
    );
  }

// Helper method to generate benefit chips
  List<Widget> _getBenefitChips(List<StoreBenefitsDto> benefits) {
    final List<Widget> chips = [];

    if (_hasBenefitType(benefits, StoreBenefitType.FIRST_GAME)) {
      chips.add(const ColorfulChip(
        theme: ColorfulChipTheme.red,
        text: '첫게임 혜택',
      ));
    }

    if (_hasBenefitType(benefits, StoreBenefitType.NEW_USER)) {
      chips.add(const ColorfulChip(
        theme: ColorfulChipTheme.red,
        text: '신규 혜택',
      ));
    }

    return chips;
  }

// Helper method to check benefit type
  bool _hasBenefitType(
    List<StoreBenefitsDto> benefits,
    StoreBenefitType type,
  ) {
    return benefits.any((benefit) => benefit.type == type.kr);
  }
}
