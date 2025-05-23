import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';

class MyFavoritePage extends StatefulHookConsumerWidget {
  const MyFavoritePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<MyFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('찜한 펍'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return StoreListItem(
            store: StoreDto(
              id: "1",
              phone: "01012345678",
              isViewKakaoChat: true,
              kakaoChatUrl: "https://kakao.com",
              lat: 1234.1234,
              lng: 1234.1234,
              storeBenefits: [],
              storeTags: [],
              gameMttItems: [],
              type: GameType.MTT.name,
              name: "asdf",
              address: "asdf",
              addressDetail: "asdf",
              openTime: "10:00:00",
              closeTime: "10:00:00",
              distance: 1234.1234,
              updatedAt: DateTime.now(),
              storeImages: [
                StoreImagesDto(
                  id: "1",
                  url:
                      'https://plus.unsplash.com/premium_photo-1700268374954-f06052915608',
                ),
              ],
            ),
            handleClick: () => _handleClick(
              "1234",
              1234.2134,
              123.41234,
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
      ),
    );
  }

  void _handleClick(String storeId, double lat, double lng) {
    context.push(
      CustomRouter.store.path,
      extra: StoreDetailPageArgs(id: storeId),
    );
  }
}
