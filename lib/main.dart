import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/app_bar.dart';
import 'package:pokerspot_user_app/apps/global/theme/bottom_navigation.dart';
import 'package:pokerspot_user_app/apps/global/theme/bottom_sheet.dart';
import 'package:pokerspot_user_app/apps/global/theme/button.dart';
import 'package:pokerspot_user_app/apps/global/theme/chip.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/dialog.dart';
import 'package:pokerspot_user_app/apps/global/theme/fab.dart';
import 'package:pokerspot_user_app/apps/global/theme/list_tile.dart';
import 'package:pokerspot_user_app/apps/global/theme/slider.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/secret/secret.dart';

import 'firebase_options.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  KakaoSdk.init(
    nativeAppKey: Secret.kakaoNativeKey.key,
    javaScriptAppKey: Secret.kakaoJavaScriptKey.key,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

ThemeData _createThemeData({required BuildContext context}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: colorBrand50,
      secondary: colorBrand95,
    ),
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: colorBrand100,
    splashFactory: InkRipple.splashFactory,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: colorGrey80,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      indent: 1,
      space: 1,
      color: colorGrey95,
    ),
    textTheme: textTheme,
    filledButtonTheme: filledButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    floatingActionButtonTheme: floatingActionButtonThemeData,
    bottomNavigationBarTheme: bottomNavigationBarThemeData,
    dialogTheme: dialogTheme,
    sliderTheme: sliderThemeData,
    bottomSheetTheme: bottomSheetThemeData,
    listTileTheme: listTileThemeData,
    chipTheme: chipThemeData,
    splashColor: colorGrey98,
    dialogBackgroundColor: Colors.white,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          title: '포커스팟 (PokerSpot)',
          theme: _createThemeData(context: context),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('ko', 'KR')],
          routerConfig: router,
        ),
      ),
    );
  }
}
