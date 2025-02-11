import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/benefits.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';

class StoreDetailVac extends StatelessWidget {
  const StoreDetailVac({
    super.key,
    required this.openTime,
    required this.closeTime,
    required this.scrollEffectTargetKey,
    required this.model,
  });

  final StoreDto model;
  final String openTime;
  final String closeTime;
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
          type: model.type,
          title: model.name,
          distance: model.distance,
          runningTime: '$openTime ~ $closeTime까지',
          updatedAt: model.updatedAt ?? DateTime.now(),
          openChatUrl: model.isViewKakaoChat ? model.kakaoChatUrl : null,
          isViewKakaoChat: model.isViewKakaoChat,
        ),

        // 지도 정보
        StoreDetailMap(
          model: model,
          handleButtonClick: () {
            context.push(
              CustomRouter.storeMap.path,
              extra: StoreMapPageArguments(
                name: model.name,
                addressDetail: model.addressDetail,
                address: model.address,
                lat: model.lat,
                lng: model.lng,
              ),
            );
          },
        ),

        if (model.storeBenefits.isNotEmpty) ...[
          // 혜택 정보
          StoreDetailBenefits(benefits: model.storeBenefits),
        ],

        // 토너먼트 정보
        StoreDetailGameList(games: model.gameMttItems),
      ],
    );
  }
}
