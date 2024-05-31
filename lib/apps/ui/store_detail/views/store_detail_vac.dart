import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StoreDetailVac extends StatelessWidget {
  const StoreDetailVac({
    super.key,
    required this.refreshController,
    required this.storeId,
    required this.handleRefresh,
    required this.data,
    required this.openTimeCalculated,
    required this.call,
    required this.showNaviBottomSheet,
  });

  final RefreshController refreshController;
  final String storeId;
  final Function() handleRefresh;
  final StoreModel data;
  final String openTimeCalculated;
  final Function(String?, String?) call;
  final Function() showNaviBottomSheet;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SmartRefresher(
              controller: refreshController,
              enablePullDown: true,
              onRefresh: handleRefresh,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 이미지
                    StoreDetailImageSwiper(images: data.storeImages ?? []),

                    // 일반 정보
                    _buildInformation(context),
                  ],
                ),
              ),
            ),
          ),
          _buildFooter(),
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
        ),

        // 지도 정보
        StoreDetailMap(
          name: data.name ?? "-",
          lat: data.lat ?? 0.0,
          lng: data.lng ?? 0.0,
          address: '${data.address}, ${data.addressDetail}',
          handleButtonClick: () {
            context.push(
              CustomRouter.storeMap.path,
              extra: StoreMapPageArguments(
                name: data.name ?? "-",
                address: '${data.address}, ${data.addressDetail}',
                lat: data.lat ?? 0.0,
                lng: data.lng ?? 0.0,
              ),
            );
          },
        ),

        // 토너먼트 정보
        StoreDetailGameList(
          games: data.gameMTTItems ?? [],
        ),
      ],
    );
  }

  Container _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorGrey100,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton.outlined(
            onPressed: showNaviBottomSheet,
            icon: const Icon(Icons.directions_rounded),
            style: ButtonStyle(
              iconColor: WidgetStateProperty.all(colorBrand60),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.all(12),
              ),
              side: WidgetStateProperty.all(
                const BorderSide(color: colorBrand60),
              ),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          OutlinedButton.icon(
            onPressed: () => Utils().copyToClipboard(text: data.address),
            icon: const Icon(Icons.content_copy_rounded),
            label: const Text('주소복사'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: FilledButton.icon(
              onPressed: () => call(data.name, data.phone),
              icon: const Icon(Icons.call_rounded),
              label: const Text('전화 걸기'),
            ),
          ),
        ],
      ),
    );
  }
}
