import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';

class StoreDetailVac extends StatelessWidget {
  const StoreDetailVac({
    super.key,
    required this.openTimeCalculated,
    required this.scrollEffectTargetKey,
    required this.id,
    required this.name,
    required this.type,
    required this.distance,
    required this.updatedAt,
    required this.address,
    required this.addressDetail,
    required this.lat,
    required this.lng,
    required this.closeTime,
    required this.gameMTTItems,
  });

  final String openTimeCalculated;
  final GlobalKey scrollEffectTargetKey;
  final String id;
  final String name;
  final String type;
  final double distance;
  final DateTime updatedAt;
  final String address;
  final String addressDetail;
  final double lat;
  final double lng;
  final String closeTime;
  final List<StoreGamesModel> gameMTTItems;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: scrollEffectTargetKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 일반 정보
          _buildInformation(context),
        ],
      ),
    );
  }

  Widget _buildInformation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 헤더
        StoreDetailHeader(
          type: type,
          title: name,
          distance: distance,
          runningTime: '$openTimeCalculated ~ $closeTime까지',
          updatedAt: updatedAt,
        ),

        // 지도 정보
        StoreDetailMap(
          name: name,
          lat: lat,
          lng: lng,
          address: address,
          addressDetail: addressDetail,
          handleButtonClick: () {
            context.push(
              CustomRouter.storeMap.path,
              extra: StoreMapPageArguments(
                name: name,
                addressDetail: addressDetail,
                address: address,
                lat: lat,
                lng: lng,
              ),
            );
          },
        ),

        // 토너먼트 정보
        StoreDetailGameList(games: gameMTTItems),
      ],
    );
  }
}
