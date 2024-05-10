import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';
import 'package:pokerspot_user_app/common/components/list_footer/custom_list_footer.dart';

class MyRecentPage extends StatefulHookConsumerWidget {
  const MyRecentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyRecentPageState();
}

class _MyRecentPageState extends ConsumerState<MyRecentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('최근 본 펍'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return WithListFooter(
            child: HomeStore(
              storeImages: [
                StoreImageDto(
                  id: "1",
                  url:
                      'https://plus.unsplash.com/premium_photo-1700268374954-f06052915608',
                ),
              ],
              name: "asdf",
              address: "asdf",
              addressDetail: "asdf",
              openTime: "10:00:00",
              closeTime: "10:00:00",
              distance: 1234.1234,
              storeGames: const [],
              handleClick: () => _handleClick(
                "1234",
                1234.2134,
                123.41234,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
      ),
    );
  }

  void _handleClick(String storeId, double lat, double lng) {
    context.push(
      CustomRouter.storeDetail.path,
      extra: StoreDetailPageArguments(
        storeId: storeId,
        lat: lat,
        lng: lng,
      ),
    );
  }
}
