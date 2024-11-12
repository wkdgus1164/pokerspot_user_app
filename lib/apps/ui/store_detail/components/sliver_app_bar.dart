import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    required this.showTitle,
    required this.data,
  });

  final bool showTitle;
  final StoreModel data;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.width * 9 / 16,
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
        child: Text(data.name ?? ""),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: StoreDetailImageSwiperV2(
          images: data.storeImages ?? [],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Utils().callTo(phone: data.phone);
          },
          icon: Icon(
            Icons.call_rounded,
            color: showTitle ? Colors.black : Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            _showShareBottomSheet(data, context);
          },
          icon: Icon(
            Icons.share_rounded,
            color: showTitle ? Colors.black : Colors.white,
          ),
        ),
      ],
    );
  }

  void _showShareBottomSheet(StoreModel model, BuildContext context) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        builder: (context) {
          return StoreDetailShareAndroid(
            handleKakaoShare: () => _handleKakaoShare(model),
            model: model,
          );
        },
      );
    } else {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return StoreDetailShareCupertinoActionSheet(
            handleKakaoShare: () => _handleKakaoShare(model),
            model: model,
          );
        },
      );
    }
  }

  void _handleKakaoShare(StoreModel model) async {
    Fluttertoast.showToast(msg: '카카오톡으로 공유할게요.');
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
