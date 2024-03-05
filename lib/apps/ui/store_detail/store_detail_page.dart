import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/basic_information.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/tournaments.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/type_and_title.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store_detail.dart';

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
          return Scaffold(
            appBar: AppBar(
              title: const Text('이름'),
            ),
            backgroundColor: colorGrey98,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Swiper(
                        itemCount: data.storeImages.length,
                        autoplay: true,
                        loop: false,
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (context, index) {
                          return CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: data.storeImages[index].url,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StoreDetailTypeAndTitle(
                          type: data.type,
                          title: data.name,
                        ),
                        const SizedBox(height: 16),
                        StoreDetailBasicInformation(
                          address: '${data.address},\n${data.addressDetail}',
                          runningTime: '${data.openTime} ~ ${data.closeTime}까지',
                        ),
                        const SizedBox(height: 16),
                        StoreDetailTournaments(
                          tournaments: data.gameMttItems,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, _) => Text(error.toString()),
        loading: () => const Text('loading'));
  }
}
