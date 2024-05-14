import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/ui/home/home_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/favorite/favorite_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/info/info_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/notice_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice_detail/notice_detail_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/policy/policy_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/recent/recent_page.dart';
import 'package:pokerspot_user_app/apps/ui/navigation/navigation_page.dart';
import 'package:pokerspot_user_app/apps/ui/permission/permission_page.dart';
import 'package:pokerspot_user_app/apps/ui/photo_viewer/photo_viewer_page.dart';
import 'package:pokerspot_user_app/apps/ui/splash/splash_page.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';
import 'package:pokerspot_user_app/apps/ui/store_map/store_map_page.dart';

enum CustomRouter {
  splash('/splash'),
  permission('/permission'),
  main('/main'),
  home('/home'),
  storeDetail('/store_detail'),
  policy('/policy'),
  myInfo('/my_info'),
  notice('/notice'),
  noticeDetail('/notice_detail'),
  favorite('/favorite'),
  recent('/recent'),
  photoView('/photo_view'),
  storeMap('/store_map'),
  ;

  const CustomRouter(this.path);

  final String path;
}

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

final router = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: CustomRouter.splash.path,
  routes: [
    GoRoute(
      path: CustomRouter.permission.path,
      builder: (context, state) => const PermissionPage(),
    ),
    GoRoute(
      path: CustomRouter.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: CustomRouter.main.path,
      builder: (context, state) => const NavigationPage(),
    ),
    GoRoute(
      path: CustomRouter.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: CustomRouter.storeDetail.path,
      builder: (context, state) {
        final args = state.extra as StoreDetailPageArguments;
        return StoreDetailPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.policy.path,
      builder: (context, state) => const PolicyPage(),
    ),
    GoRoute(
      path: CustomRouter.myInfo.path,
      builder: (context, state) => const MyInfoPage(),
    ),
    GoRoute(
      path: CustomRouter.notice.path,
      builder: (context, state) => const MyNoticePage(),
    ),
    GoRoute(
      path: CustomRouter.noticeDetail.path,
      builder: (context, state) => const MyNoticeDetailPage(),
    ),
    GoRoute(
      path: CustomRouter.favorite.path,
      builder: (context, state) => const MyFavoritePage(),
    ),
    GoRoute(
      path: CustomRouter.recent.path,
      builder: (context, state) => const MyRecentPage(),
    ),
    GoRoute(
      path: CustomRouter.photoView.path,
      builder: (context, state) {
        final args = state.extra as PhotoViewerPageArguments;
        return PhotoViewerPage(args: args);
      },
    ),
    GoRoute(
      path: CustomRouter.storeMap.path,
      builder: (context, state) {
        final args = state.extra as StoreMapPageArguments;
        return StoreMapPage(args: args);
      },
    ),
  ],
);
