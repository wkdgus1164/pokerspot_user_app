import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_v2.dart';

class MyFavoritePage extends StatefulHookConsumerWidget {
  const MyFavoritePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends ConsumerState<MyFavoritePage> {
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
          return StoreV2(
            storeImages: [
              StoreImagesModel(
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
            updatedAt: DateTime.now(),
            storeGames: const [],
            storeBenefits: [],
            storeTags: [],
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
    context.pushNamed(
      CustomRouter.store.path,
      pathParameters: {'storeId': storeId},
    );
  }
}
