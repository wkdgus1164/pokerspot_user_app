import 'dart:convert';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/basic_information.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/captions/data_loading.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/fab.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StoreDetailPage extends StatefulHookConsumerWidget {
  const StoreDetailPage({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreDetailPageState();
}

class _StoreDetailPageState extends ConsumerState<StoreDetailPage> {
  String get _storeId => widget.id;

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreDetailPage\n  store id: $_storeId');
    final res = ref.watch(storeDataProvider.call(_storeId));

    return res.when(
      data: (data) {
        final openTimeCalculated = int.parse(
                    data.openTime.toString().substring(0, 2)) >
                12
            ? '오후 ${int.parse(data.openTime.toString().substring(0, 2)) - 12}시'
            : '오후 ${int.parse(data.openTime.toString().substring(0, 2))}시';

        return Scaffold(
          appBar: AppBar(
            title: Text(data.name ?? "-"),
            actions: [
              IconButton(
                onPressed: () => _handleKakaoShare(data),
                icon: const Icon(Icons.share_rounded),
              ),
              // IconButton(
              //   onPressed: () => _handleFavoriteClick(),
              //   icon: const Icon(Icons.favorite_outline_rounded),
              // ),
            ],
          ),
          floatingActionButton:
              const StoreDetailFab(url: 'https://open.kakao.com/o/g3RqqC5e'),
          body: Column(
            children: [
              Expanded(
                child: SmartRefresher(
                  controller: _refreshController,
                  enablePullDown: true,
                  onRefresh: () {
                    ref.invalidate(storeDataProvider.call(_storeId));
                    _refreshController.refreshCompleted();
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 이미지
                        StoreDetailImageSwiper(images: data.storeImages ?? []),

                        // 일반 정보
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 헤더
                              StoreDetailHeader(
                                type: data.type ?? "",
                                title: data.name ?? "-",
                                distance: data.distance ?? 0.0,
                              ),
                              const SizedBox(height: 16),

                              // 기본 정보
                              StoreDetailBasicInformation(
                                address: data.address ?? "-",
                                addressDetail: data.addressDetail ?? "-",
                                runningTime:
                                    '$openTimeCalculated ~ ${data.closeTime ?? '마감 시'}까지',
                              ),
                              const SizedBox(height: 16),

                              // 지도 정보
                              StoreDetailMap(
                                  name: data.name ?? "-",
                                  lat: data.lat ?? 0.0,
                                  lng: data.lng ?? 0.0,
                                  address:
                                      '${data.address},\n${data.addressDetail}',
                                  handleButtonClick: () {
                                    context.push(
                                      CustomRouter.storeMap.path,
                                      extra: StoreMapPageArguments(
                                        name: data.name ?? "-",
                                        address:
                                            '${data.address}, ${data.addressDetail}',
                                        lat: data.lat ?? 0.0,
                                        lng: data.lng ?? 0.0,
                                      ),
                                    );
                                  }),
                              const SizedBox(height: 16),

                              // 토너먼트 정보
                              StoreDetailGameList(
                                games: data.gameMTTItems ?? [],
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: colorGrey100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 20,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () =>
                          Utils().copyToClipboard(text: data.address),
                      icon: const Icon(Icons.copy_rounded, size: 20),
                      label: const Text('주소 복사'),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: FilledButton(
                        onPressed: () => _call(data.name!, data.phone),
                        child: const Text('전화 걸기'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        Logger().e(error);
        String err = jsonEncode(error);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Icon(Icons.error_rounded, color: colorGrey80),
          ),
          body: Text(err),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const CircularProgressIndicator.adaptive(),
          ),
          body: const StoreDetailDataLoading(),
        );
      },
    );
  }

  void _call(
    String storeName,
    String? phone,
  ) {
    Utils().callTo(phone: phone);

    FirebaseAnalytics.instance.logEvent(
      name: 'PHONE_CALL',
      parameters: {
        '업소명': storeName,
        '연락처': phone,
      },
    );
  }

  void _handleKakaoShare(StoreModel model) async {
    KakaoLinkHelper().shareKakaoFeed(
      KakaoFeedModel(
        id: model.id,
        title: model.name,
        description: model.address,
        thumbnail: model.storeImages![0].url ?? "",
      ),
    );
  }
}
