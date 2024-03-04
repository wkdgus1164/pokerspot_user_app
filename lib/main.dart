import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pokerspot_user_app/apps/global/theme/app_bar.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          // statusBarColor: Colors.transparent,
          // statusBarIconBrightness: Brightness.dark,
          // systemNavigationBarColor: Colors.white,
          // systemNavigationBarDividerColor: Colors.white,
          ),
    );

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
