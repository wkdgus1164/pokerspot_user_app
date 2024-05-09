import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/ui/home/home_page.dart';
import 'package:pokerspot_user_app/apps/ui/navigation/navigation_page.dart';
import 'package:pokerspot_user_app/apps/ui/permission/permission_page.dart';
import 'package:pokerspot_user_app/apps/ui/splash/splash_page.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/store_detail_page.dart';

enum CustomRouter {
  splash('/splash'),
  permission('/permission'),
  main('/main'),
  home('/home'),
  storeDetail('/store_detail'),
  ;

  const CustomRouter(this.path);

  final String path;
}

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

final router = GoRouter(
  // observers: [FirebaseAnalyticsObserver(analytics: analytics)],
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
  ],
);
