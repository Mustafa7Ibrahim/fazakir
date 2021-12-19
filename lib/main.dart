import 'package:bloc/bloc.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/models/azkar_model.dart';
import 'package:fazakir/models/praise_model.dart';
import 'package:fazakir/myobserver.dart';
import 'package:fazakir/views/azkar/azkar_list.dart';
import 'package:fazakir/views/home/home.dart';
import 'package:fazakir/views/praise/praise.dart';
import 'package:fazakir/views/praise/praise_info.dart';
import 'package:fazakir/views/prayer_times/prayer_first_time.dart';
import 'package:fazakir/views/prayer_times/prayer_settings.dart';
import 'package:fazakir/views/prayer_times/prayer_times.dart';
import 'package:fazakir/views/salah/salah.dart';
import 'package:fazakir/views/zekr/zekr_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/theme_app.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await HiveHelper.init();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: MyObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("ar"),
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.system,
      home: const Home(),
      onGenerateRoute: (settings) {
        return CupertinoPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case Home.routeName:
                return const Home();
              case AzkarList.routeName:
                return const AzkarList();
              case PrayerTime.routeName:
                return const PrayerTime();
              case PrayerFirstTimeSet.routeName:
                return const PrayerFirstTimeSet();
              case PrayerSettings.routeName:
                return const PrayerSettings();
              case ZekrList.routeName:
                final AzkarModel azkarModel = settings.arguments as AzkarModel;
                return ZekrList(azkarModel: azkarModel);
              case Praise.routeName:
                return const Praise();
              case Salah.routeName:
                return const Salah();
              case PraiseInfo.routeName:
                final PraiseData praiseData = settings.arguments as PraiseData;
                return PraiseInfo(praiseData: praiseData);

              default:
                return const Home();
            }
          },
        );
      },
    );
  }
}
