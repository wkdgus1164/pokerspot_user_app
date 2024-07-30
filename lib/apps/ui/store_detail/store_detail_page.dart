import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/fab.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_ios.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/share/share_ios.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_vac.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StoreDetailPage extends StatefulHookConsumerWidget {
  const StoreDetailPage({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreDetailPageState();
}

class _StoreDetailPageState extends ConsumerState<StoreDetailPage> {
  String get _storeId => widget.id;

  final RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreDetailPage\n  store id: $_storeId');
    final res = ref.watch(storeDataProvider.call(_storeId));

    return res.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data.name ?? "-"),
            actions: [
              IconButton(
                onPressed: () {
                  _showShareBottomSheet(data);
                },
                // onPressed: () => _handleKakaoShare(data),
                icon: const Icon(Icons.share_rounded),
              ),
            ],
          ),
          floatingActionButton: _kakaoChatUrl(data.kakaoChatUrl),
          body: StoreDetailVac(
            data: data,
            storeId: _storeId,
            refreshController: _refreshController,
            openTimeCalculated: _calculateOpenTime(data.openTime),
            handleRefresh: _handleRefresh,
            call: _call,
            showNaviBottomSheet: () => _showNaviBottomSheet(
              name: data.name ?? "",
              address: data.address ?? "",
              x: data.lng ?? 0,
              y: data.lat ?? 0,
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return ErrorPlaceholder(
          error: error.toString(),
        );
      },
      loading: () {
        return const LoadingPlaceholder(
          loadingHeaderText: '-',
        );
      },
    );
  }

  void _call(
    String storeName,
    String phone,
  ) {
    Utils().callTo(phone: phone);

    FirebaseAnalytics.instance.logEvent(
      name: 'PHONE_CALL',
      parameters: {
        '업소명': storeName,
        '연락처': phone,
      },
    );
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

  void _handleRefresh() {
    ref.invalidate(storeDataProvider.call(_storeId));

    Future.delayed(const Duration(seconds: 1), () {
      _refreshController.refreshCompleted();
    });
  }

  String _calculateOpenTime(String? openTime) {
    final int time = int.parse(openTime.toString().substring(0, 2));
    return time > 12 ? '오후 ${time - 12}시' : '오후 $time시';
  }

  void _showShareBottomSheet(StoreModel model) {
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

  void _showNaviBottomSheet({
    required String name,
    required String address,
    required double x,
    required double y,
  }) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        builder: (context) {
          return StoreDetailNaviAndroid(
            name: name,
            address: address,
            x: x,
            y: y,
          );
        },
      );
    } else {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return StoreDetailCupertinoActionSheet(
            name: name,
            address: address,
            x: x,
            y: y,
          );
        },
      );
    }
  }

  Widget _kakaoChatUrl(String? url) {
    if (url == null) {
      return const SizedBox();
    } else {
      return StoreDetailFab(url: url);
    }
  }
}
