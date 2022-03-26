import 'package:fazakir/nav_bar.dart';
import 'package:fazakir/views/quran/quran_page.dart';
import 'package:fazakir/views/quran/soura_list.dart';

import '../../models/azkar_model.dart';
import '../../models/praise_model.dart';
import '../../views/azkar/azkar_list.dart';
import '../../views/home/home.dart';
import '../../views/praise/praise.dart';
import '../../views/praise/praise_info.dart';
import '../../views/prayer_times/prayer_first_time.dart';
import '../../views/prayer_times/prayer_settings.dart';
import '../../views/prayer_times/prayer_times.dart';
import '../../views/salah/salah.dart';
import '../../views/zekr/zekr_list.dart';
import 'package:flutter/cupertino.dart';

class RouteConfig {
  RouteConfig(this.context);

  final BuildContext context;

  Route<dynamic> generateRoute(RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case NavBar.routeName:
            return const NavBar();
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
          case SouraList.routeName:
            return const SouraList();
          case QuranPageScrean.routeName:
            int? index;
            return QuranPageScrean(
              index: index,
            );

          default:
            return const NavBar();
        }
      },
    );
  }
}
