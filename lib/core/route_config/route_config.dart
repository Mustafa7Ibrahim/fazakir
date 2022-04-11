import '../../nav_bar.dart';
import '../../views/hug/hug_view.dart';
import '../../views/quran/quran_page.dart';
import '../../views/settings/contect_us/contect_us.dart';
import '../../views/settings/info_app/info_app.dart';
import '../../views/settings/privacy_policy/privacy_policy.dart';
import '../../views/settings/settings.dart';
import '../../views/settings/terms_and_conditions/terms_and_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/save_quran_page_cubit/save_quran_page_cubit.dart';
import '../../models/azkar_model.dart';
import '../../models/praise_model.dart';
import '../../views/azkar/azkar_list.dart';
import '../../views/praise/praise.dart';
import '../../views/praise/praise_info.dart';
import '../../views/salah/salah.dart';
import '../../views/zekr/zekr_list.dart';

class RouteConfig {
  RouteConfig(this.context);

  final BuildContext context;

  Route<dynamic> generateRoute(RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          // case NavBar.routeName:
          //   return const NavBar();
          // case Home.routeName:
          //   return const Home();
          case AzkarList.routeName:
            return const AzkarList();
          // case PrayerTime.routeName:
          //   return const PrayerTime();
          // case PrayerFirstTimeSet.routeName:
          //   return const PrayerFirstTimeSet();
          // case PrayerSettings.routeName:
          //   return const PrayerSettings();
          case PrivacyPolicy.routeName:
            return const PrivacyPolicy();
          case TermsAndConditions.routeName:
            return const TermsAndConditions();
          case Settings.routeName:
            return const Settings();
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
          // case SouraList.routeName:
          //   return const SouraList();
          case QuranPageScrean.routeName:
            int? index =
                BlocProvider.of<SaveQuranPageCubit>(context).noQuranPage ?? 0;
            return QuranPageScrean(
              index: index,
            );
          case HugView.routeName:
            return const HugView();
          case ContactUS.routeName:
            return const ContactUS();
          case InfoApp.routeName:
            return const InfoApp();

          default:
            return const NavBar();
        }
      },
    );
  }
}
