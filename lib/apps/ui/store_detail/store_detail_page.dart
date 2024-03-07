import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/basic_information.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/captions/data_loading.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/map.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/tournaments.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/header.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store_detail.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailPageArguments {
  String storeId;
  double lat;
  double lng;

  StoreDetailPageArguments({
    required this.storeId,
    required this.lat,
    required this.lng,
  });
}

class StoreDetailPage extends StatefulHookConsumerWidget {
  const StoreDetailPage({super.key, required this.args});

  final StoreDetailPageArguments args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreDetailPageState();
}

class _StoreDetailPageState extends ConsumerState<StoreDetailPage> {
  StoreDetailPageArguments get _args => widget.args;

  @override
  Widget build(BuildContext context) {
    Logger().d(
        '선택한 업소 정보: storeId: ${_args.storeId}, lan: ${_args.lat}, lng: ${_args.lng}');

    final res = ref.watch(
      storeDetailDataProvider.call(
        _args.storeId,
        _args.lat,
        _args.lng,
      ),
    );

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
          ),
          body: Column(
            children: [
              Expanded(
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
                              distance: data.distance == null
                                  ? "-"
                                  : data.distance.toString(),
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
                              lat: data.lat,
                              lng: data.lng,
                            ),
                            const SizedBox(height: 16),

                            // 토너먼트 정보
                            StoreDetailTournaments(
                              tournaments: data.gameMttItems ?? [],
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
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
                        onPressed: _call,
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
      error: (error, _) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('매장 정보 없음'),
          ),
          body: Text(error.toString()),
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
    } else {
      Logger().d('주소 정보가 없어요.');
      return;
    }
  }

  void _call() {
    const number = '01012341234';
    launchUrl(Uri.parse("tel://$number"));
  }
}
