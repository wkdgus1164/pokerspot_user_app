import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_detail/area_detail_page.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/nearby_filtered_list/nearby_filtered_list_page.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/filter_page.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/nearby_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/favorite/favorite_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/info/info_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice/notice_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice_detail/notice_detail_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/policy/policy_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/recent/recent_page.dart';
import 'package:pokerspot_user_app/apps/ui/bottom_navigation/bottom_navigation.dart';
import 'package:pokerspot_user_app/apps/ui/onboarding/permission/permission_page.dart';
import 'package:pokerspot_user_app/apps/ui/global/photo_viewer/photo_viewer_page.dart';
import 'package:pokerspot_user_app/apps/ui/search/search_page.dart';
import 'package:pokerspot_user_app/apps/ui/onboarding/splash/splash_page.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';

enum CustomRouter {
  // Onboarding
  splash('/splash'),
  permission('/permission'),

  // Main
  main('/main'),
  nearby('/nearby'),
  store('/store/:id'),
  policy('/policy'),
  myInfo('/my_info'),
  notice('/notice'),
  noticeDetail('/notice/:id'),
  favorite('/favorite'),
  recent('/recent'),
  photoView('/photo_view'),
  storeMap('/store_map'),
  search('/search'),
  areaSearchList('/area_search_list'),
  gameTypeFilterList('/game_type_filter_list'),
  nearbyFilter('/nearby_filter'),
  ;

  const CustomRouter(this.path);

  final String path;
}

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

final router = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: CustomRouter.splash.path,
  onException: (_, state, router) {
    router.go("/splash");
  },
  routes: [
    GoRoute(
      path: CustomRouter.permission.path,
      builder: (_, state) => const PermissionPage(),
    ),
    GoRoute(
      path: CustomRouter.splash.path,
      builder: (_, state) => const SplashPage(),
    ),
    GoRoute(
      path: CustomRouter.main.path,
      builder: (_, state) => const BottomNavigation(),
    ),
    GoRoute(
      path: CustomRouter.nearby.path,
      builder: (_, state) => const NearbyPage(),
    ),
    GoRoute(
      path: CustomRouter.store.path,
      builder: (_, state) {
        final args = state.extra as StoreDetailPageArgs;

        return StoreDetailPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.policy.path,
      builder: (_, state) => const PolicyPage(),
    ),
    GoRoute(
      path: CustomRouter.myInfo.path,
      builder: (_, state) => const MyInfoPage(),
    ),
    GoRoute(
      path: CustomRouter.notice.path,
      builder: (_, state) => const MyNoticePage(),
    ),
    GoRoute(
      path: CustomRouter.noticeDetail.path,
      name: CustomRouter.noticeDetail.name,
      builder: (_, state) {
        final args = state.extra as MyNoticeDetailPageArgs;
        return MyNoticeDetailPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.favorite.path,
      builder: (_, state) => const MyFavoritePage(),
    ),
    GoRoute(
      path: CustomRouter.recent.path,
      builder: (_, state) => const MyRecentPage(),
    ),
    GoRoute(
      path: CustomRouter.photoView.path,
      builder: (_, state) {
        final args = state.extra as PhotoViewerPageArguments;
        return PhotoViewerPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.storeMap.path,
      builder: (_, state) {
        final args = state.extra as StoreMapPageArguments;
        return StoreMapPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.search.path,
      builder: (_, state) => const SearchPage(),
    ),
    GoRoute(
      path: CustomRouter.areaSearchList.path,
      name: CustomRouter.areaSearchList.name,
      builder: (_, state) {
        final args = state.extra as AreaDetailPageArgs;
        return AreaDetailPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.gameTypeFilterList.path,
      builder: (_, state) {
        final args = state.extra as GameTypeFilterListPageArguments;
        return GameTypeFilterListPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.nearbyFilter.path,
      builder: (_, state) => const NearbyFilterPage(),
    ),
  ],
  observers: [
    FirebaseAnalyticsObserver(analytics: analytics),
  ],
  redirect: (_, state) {
    if (kReleaseMode) {
      analytics.logEvent(
        name: 'screen_view',
        parameters: {'screen_name': state.matchedLocation},
      );
    }
    return null;
  },
);
