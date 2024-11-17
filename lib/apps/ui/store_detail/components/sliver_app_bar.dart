import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_ios.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/image_swiper_v2.dart';

class StoreDetailSliverAppBar extends StatelessWidget {
  const StoreDetailSliverAppBar({
    super.key,
    required this.name,
    required this.distance,
    required this.phone,
    required this.storeImages,
    required this.showTitle,
    required this.id,
    required this.address,
  });

  final bool showTitle;
  final String id;
  final String name;
  final String address;
  final double distance;
  final String phone;
  final List<StoreImagesModel> storeImages;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight:
          MediaQuery.of(context).size.width * 10 / 16 - kToolbarHeight,
      pinned: true,
      backgroundColor: showTitle ? Colors.white : Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: showTitle ? Brightness.dark : Brightness.light,
        statusBarBrightness: showTitle ? Brightness.light : Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: showTitle ? Colors.black : Colors.white,
      ),
      title: AnimatedOpacity(
        opacity: showTitle ? 1 : 0,
        duration: Duration(milliseconds: 0),
        child: Text(name),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.bottomRight,
          children: [
            StoreDetailImageSwiperV2(
              images: storeImages,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              margin: const EdgeInsets.only(
                right: 16,
                bottom: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Wrap(
                spacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.gps_fixed_rounded,
                    color: colorGrey20,
                    size: 14,
                  ),
                  Text(
                    '여기에서 ${Utils().getFormattedDistance(distance: distance)}',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey20,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => _showShareBottomSheet(
            id: id,
            name: name,
            address: address,
            storeImages: storeImages,
            context: context,
          ),
          icon: Icon(
            Icons.share_rounded,
            color: showTitle ? Colors.black : Colors.white,
          ),
        ),
        IconButton(
          onPressed: () => Utils().callTo(phone: phone),
          icon: Icon(
            Icons.call_rounded,
            color: showTitle ? Colors.black : Colors.white,
          ),
        ),
      ],
    );
  }

  void _showShareBottomSheet({
    required String id,
    required String name,
    required String address,
    required List<StoreImagesModel>? storeImages,
    required BuildContext context,
  }) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        builder: (context) {
          return StoreDetailShareAndroid(
            handleKakaoShare: () => _handleKakaoShare(
              id: id,
              name: name,
              address: address,
              storeImages: storeImages,
            ),
            id: id,
          );
        },
      );
    } else {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return StoreDetailShareCupertinoActionSheet(
            handleKakaoShare: () => _handleKakaoShare(
              id: id,
              name: name,
              address: address,
              storeImages: storeImages,
            ),
            id: id,
          );
        },
      );
    }
  }

  void _handleKakaoShare({
    required String id,
    required String name,
    required String address,
    required List<StoreImagesModel>? storeImages,
  }) async {
    Fluttertoast.showToast(msg: '카카오톡으로 공유할게요.');
    KakaoLinkHelper().shareKakaoFeed(
      KakaoFeedModel(
        id: id,
        title: name,
        description: address,
        thumbnail: storeImages![0].url ?? "",
      ),
    );
  }
}
