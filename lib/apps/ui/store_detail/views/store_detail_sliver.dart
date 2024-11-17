import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/sliver_app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/footer_toolbar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_vac.dart';

class StoreDetailBody extends StatelessWidget {
  const StoreDetailBody({
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
    required this.openTime,
    required this.distance,
    required this.storeImages,
    required this.updatedAt,
    required this.addressDetail,
    required this.closeTime,
    required this.gameMTTItems,
    required this.type,
  });

  final String id;
  final String name;
  final String address;
  final double lat;
  final double lng;
  final String type;
  final String phone;
  final String openTime;
  final bool showTitle;
  final double distance;
  final List<StoreImagesModel> storeImages;
  final ScrollController scrollController;
  final GlobalKey scrollEffectTargetKey;
  final DateTime updatedAt;
  final String addressDetail;
  final String closeTime;
  final List<StoreGamesModel> gameMTTItems;

  String _calculateOpenTime(String? openTime) {
    final int time = int.parse(openTime.toString().substring(0, 2));
    return time > 12 ? '오후 ${time - 12}시' : '오후 $time시';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              StoreDetailSliverAppBar(
                id: id,
                phone: phone,
                distance: distance,
                name: name,
                address: address,
                storeImages: storeImages,
                showTitle: showTitle,
              ),
              SliverToBoxAdapter(
                child: _buildContent(),
              ),
            ],
          ),
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

  Widget _buildContent() {
    return StoreDetailVac(
      scrollEffectTargetKey: scrollEffectTargetKey,
      id: id,
      type: type,
      distance: distance,
      name: name,
      address: address,
      lat: lat,
      lng: lng,
      updatedAt: updatedAt,
      addressDetail: addressDetail,
      closeTime: closeTime,
      gameMTTItems: gameMTTItems,
      openTimeCalculated: _calculateOpenTime(openTime),
    );
  }
}
