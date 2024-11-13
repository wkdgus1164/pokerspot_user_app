import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/benefits.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';

class StoreDetailV2Vac extends StatelessWidget {
  const StoreDetailV2Vac({
    super.key,
    required this.data,
    required this.openTimeCalculated,
    required this.scrollEffectTargetKey,
  });

  final StoreV2Model data;
  final String openTimeCalculated;
  final GlobalKey scrollEffectTargetKey;

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
          type: data.type ?? "",
          title: data.name ?? "-",
          distance: data.distance ?? 0.0,
          runningTime: '$openTimeCalculated ~ ${data.closeTime ?? '마감 시'}까지',
          updatedAt: data.updatedAt,
        ),

        // 지도 정보
        StoreDetailMap(
          name: data.name ?? "-",
          lat: data.lat ?? 0.0,
          lng: data.lng ?? 0.0,
          address: data.address ?? "-",
          addressDetail: data.addressDetail ?? "",
          handleButtonClick: () {
            context.push(
              CustomRouter.storeMap.path,
              extra: StoreMapPageArguments(
                name: data.name ?? "-",
                addressDetail: data.addressDetail ?? "",
                address: data.address ?? "",
                lat: data.lat ?? 0.0,
                lng: data.lng ?? 0.0,
              ),
            );
          },
        ),

        // 혜택 정보
        StoreDetailBenefits(
          benefits: data.storeBenefits ?? [],
        ),

        // 토너먼트 정보
        StoreDetailGameList(
          games: data.gameMTTItems ?? [],
        ),
      ],
    );
  }
}
