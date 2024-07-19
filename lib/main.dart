import 'package:bill/colors.dart';

import 'package:bill/stores/stores.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:status_bar_control/status_bar_control.dart';
import 'package:bill/router.dart';

void main() {
  try {
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e) {}

  runApp(BillApp());
}

class BillApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppStores.initStores();

    StatusBarControl.setColor(Colors.white);
    return MaterialApp.router(
      title: '快记账',
      debugShowCheckedModeBanner: true,
      builder: BotToastInit(),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        buttonTheme: ButtonThemeData(minWidth: double.infinity, splashColor: Colors.transparent, highlightColor: Colors.transparent, textTheme: ButtonTextTheme.accent),
        scaffoldBackgroundColor: AppColors.appWhite,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(elevation: 0),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.appTextNormal),
      ),
      localizationsDelegates: [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
      supportedLocales: [Locale('zh', 'CH'), Locale('en', 'US')],
      // home: BottomNavigationWidget(),
      routerConfig: router,
    );
  }
}
