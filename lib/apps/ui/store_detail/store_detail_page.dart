import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/basic_information.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/captions/data_loading.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/tournaments.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/type_and_title.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store_detail.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper.dart';

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
          backgroundColor: colorGrey98,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // 이미지
                StoreDetailImageSwiper(images: data.storeImages ?? []),

                // 일반 정보
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StoreDetailTypeAndTitle(
                        type: data.type,
                        title: data.name ?? "-",
                        distance: data.distance == null
                            ? "-"
                            : data.distance.toString(),
                      ),
                      const SizedBox(height: 16),
                      StoreDetailBasicInformation(
                        address: '${data.address},\n${data.addressDetail}',
                        runningTime:
                            '$openTimeCalculated ~ ${data.closeTime ?? '마감 시'}까지',
                      ),
                      const SizedBox(height: 16),
                      StoreDetailTournaments(
                        tournaments: data.gameMttItems ?? [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
}
