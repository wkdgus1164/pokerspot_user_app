import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/ui/main/main_page.dart';
import 'package:pokerspot_user_app/apps/ui/splash/splash_page.dart';

enum CustomRouter {
  splash('/splash'),
  main('/home'),
  ;

  const CustomRouter(this.path);
  final String path;
}

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: CustomRouter.splash.path,
  routes: [
    GoRoute(
      path: CustomRouter.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: CustomRouter.main.path,
      builder: (context, state) => const MainPage(),
    ),
  ],
);
