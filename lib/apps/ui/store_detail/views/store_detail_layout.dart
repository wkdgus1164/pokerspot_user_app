import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/sliver_app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/footer_toolbar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_v2_vac.dart';

class StoreDetailLayout extends StatelessWidget {
  const StoreDetailLayout({
    super.key,
    required this.showTitle,
    required this.scrollController,
    required this.scrollEffectTargetKey,
    required this.id,
    required this.name,
    required this.address,
    required this.lat,
    required this.lng,
    required this.phone,
    required this.distance,
    required this.openTime,
    required this.storeImages,
    required this.closeTime,
    required this.updatedAt,
    required this.games,
    required this.type,
    required this.addressDetail,
    required this.storeBenefits,
  });

  final bool showTitle;
  final ScrollController scrollController;
  final GlobalKey scrollEffectTargetKey;
  final String id;
  final String name;
  final String address;
  final String addressDetail;
  final double lat;
  final double lng;
  final String phone;
  final double distance;
  final String openTime;
  final String closeTime;
  final DateTime updatedAt;
  final String type;
  final List<StoreBenefitsModel> storeBenefits;
  final List<StoreImagesModel> storeImages;
  final List<StoreGamesModel> games;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _buildScrollView(),
        ),
        StoreDetailFooterToolbar(
          name: name,
          address: address,
          lat: lat,
          lng: lng,
          phone: phone,
        ),
      ],
    );
  }

  Widget _buildScrollView() {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        StoreDetailSliverAppBar(
          showTitle: showTitle,
          id: id,
          name: name,
          address: address,
          distance: distance,
          phone: phone,
          storeImages: storeImages,
        ),
        SliverToBoxAdapter(
          child: StoreDetailV2Vac(
            name: name,
            type: type,
            distance: distance,
            updatedAt: updatedAt,
            address: address,
            addressDetail: addressDetail,
            lat: lat,
            lng: lng,
            closeTime: closeTime,
            games: games,
            storeBenefits: storeBenefits,
            scrollEffectTargetKey: scrollEffectTargetKey,
            openTimeCalculated: _calculateOpenTime(openTime),
          ),
        ),
      ],
    );
  }

  String _calculateOpenTime(String? openTime) {
    final int time = int.parse(openTime.toString().substring(0, 2));
    return time > 12 ? '오후 ${time - 12}시' : '오후 $time시';
  }
}
