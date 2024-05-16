import 'dart:convert';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/basic_information.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/captions/data_loading.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/games.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/models/model.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store_detail.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

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
    Logger().d('store id: $_storeId');
    final res = ref.watch(storeDetailDataProvider.call(_storeId));

    return res.when(
      data: (data) {
        Logger().d(data);

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
          body: Column(
            children: [
              Expanded(
                child: SmartRefresher(
                  controller: _refreshController,
                  enablePullDown: true,
                  onRefresh: () {
                    ref.invalidate(storeDetailDataProvider.call(_storeId));
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
                                type: data.type,
                                title: data.name ?? "-",
                                distance: data.distance ?? 0.0,
                              ),
                              const SizedBox(height: 16),

                              // 기본 정보
                              StoreDetailBasicInformation(
                                address:
                                    '${data.address},\n${data.addressDetail}',
                                runningTime:
                                    '$openTimeCalculated ~ ${data.closeTime ?? '마감 시'}까지',
                              ),
                              const SizedBox(height: 16),

                              // 지도 정보
                              StoreDetailMap(
                                  name: data.name ?? "-",
                                  lat: data.lat ?? 0,
                                  lng: data.lng ?? 0,
                                  address:
                                      '${data.address},\n${data.addressDetail}',
                                  handleButtonClick: () {
                                    context.push(
                                      CustomRouter.storeMap.path,
                                      extra: StoreMapPageArguments(
                                        name: data.name ?? "-",
                                        address:
                                            '${data.address}, ${data.addressDetail}',
                                        lat: data.lat ?? 0,
                                        lng: data.lng ?? 0,
                                      ),
                                    );
                                  }),
                              const SizedBox(height: 16),

                              // 토너먼트 정보
                              StoreDetailGames(
                                games: data.gameMttItems ?? [],
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
                      onPressed: () => _copy(data.address),
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

  void _copy(String? address) {
    if (address != null) {
      Clipboard.setData(ClipboardData(text: address));

      if (Platform.isIOS) {
        Fluttertoast.showToast(msg: '주소가 복사되었어요.');
      }
    } else {
      Logger().d('주소 정보가 없어요.');
      return;
    }
  }

  void _call(
    String storeName,
    String? phone,
  ) {
    if (phone == null) {
      Fluttertoast.showToast(msg: '연락처가 제공되지 않은 업소에요.');

      FirebaseAnalytics.instance.logEvent(
        name: 'PHONE_CALL',
        parameters: {
          '업소명': storeName,
          '연락처': '없음',
        },
      );
    } else {
      launchUrl(Uri.parse("tel://$phone"));

      FirebaseAnalytics.instance.logEvent(
        name: 'PHONE_CALL',
        parameters: {
          '업소명': storeName,
          '연락처': phone,
        },
      );
    }
  }

  void _handleKakaoShare(StoreDetailModel model) async {
    Fluttertoast.showToast(msg: 'model');
    KakaoLinkHelper().shareKakaoFeed(
      KakaoFeedModel(
        id: model.id,
        title: model.name,
        description: model.address,
        thumbnail: model.storeImages![0].url,
      ),
    );
  }

  // void _handleFavoriteClick() {
  //   Fluttertoast.showToast(msg: '찜하기 완료! 찜 탭에서 다시 볼 수 있어요.');
  // }
}
