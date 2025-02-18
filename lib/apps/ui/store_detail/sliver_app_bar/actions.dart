import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_ios.dart';

List<Widget> buildStoreDetailSliverAppBarBuildActions({
  required BuildContext context,
  required StoreDto model,
  required bool showTitle,
}) {
  return [
    IconButton(
      onPressed: () => _showShareBottomSheet(
        id: model.id,
        name: model.name,
        address: model.address,
        storeImages: model.storeImages,
        context: context,
      ),
      icon: Icon(
        Icons.share_rounded,
        color: showTitle ? Colors.black : Colors.white,
      ),
    ),
    IconButton(
      onPressed: () => Utils().callTo(phone: model.phone),
      icon: Icon(
        Icons.call_rounded,
        color: showTitle ? Colors.black : Colors.white,
      ),
    ),
  ];
}

void _showShareBottomSheet({
  required String id,
  required String name,
  required String address,
  required List<StoreImagesDto>? storeImages,
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
  required List<StoreImagesDto>? storeImages,
}) async {
  Fluttertoast.showToast(msg: '카카오톡으로 공유할게요.');
  KakaoLinkHelper().shareKakaoFeed(
    KakaoFeedModel(
      id: id,
      title: name,
      description: address,
      thumbnail: storeImages?.first.url ?? "",
    ),
  );
}
