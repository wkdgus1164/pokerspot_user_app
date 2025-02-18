import 'dart:async';

import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/banners/banners_api.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/models/banner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner.g.dart';

@riverpod
class BannerService extends _$BannerService {
  @override
  FutureOr<List<BannerModel>> build() {
    return _fetch();
  }

  Future<List<BannerModel>> _fetch() async {
    final res = await ref.read(bannerApiProvider).fetchBanners();

    return res.data!.toBannerListModel();
  }
}
