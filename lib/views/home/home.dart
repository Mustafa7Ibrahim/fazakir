import 'package:fazakir/bloc/save_quran_page_cubit/save_quran_page_cubit.dart';
import 'package:fazakir/bloc/save_quran_page_cubit/save_quran_page_state.dart';
import 'package:fazakir/views/hug/hug_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../core/notification/notification.dart';
import '../../widgets/costum_card.dart';
import '../azkar/azkar_list.dart';
import '../praise/praise.dart';
import '../salah/salah.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  tz.TZDateTime _nextInstanceOfTenAM() {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      3,
      29,
    );
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

  shownew() {
    AndroidNotificationDetails androidNotifi = const AndroidNotificationDetails(
      "PrayerID",
      "Prayer Times",
      channelDescription: 'this channal to play azan',
      styleInformation: BigTextStyleInformation(
        "Now is the time for prayer - 05:16 am",
      ),
      sound: RawResourceAndroidNotificationSound("fajir"),
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotifi,
    );
    notificationsPlugin.zonedSchedule(
      0,
      "Fajir",
      null,
      _nextInstanceOfTenAM(),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      matchDateTimeComponents: DateTimeComponents.dateAndTime,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SaveQuranPageCubit, SaveQuranPageState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     gradient: const LinearGradient(
                  //       colors: [
                  //         Color(0xff2EB3AF),
                  //         Color(0xff65C7A8),
                  //       ],
                  //     ),
                  //     borderRadius: BorderRadius.circular(18.0),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(20.0),
                  //     child: Row(
                  //       children: [
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             const Text(
                  //               "متابعة القراءة",
                  //               style: TextStyle(
                  //                   color: Colors.white54,
                  //                   fontFamily: "Arabic"),
                  //             ),
                  //             const SizedBox(height: 12.0),
                  //             Text(
                  //               cubit.nameSoura ?? "الفاتحة",
                  //               style: const TextStyle(
                  //                   color: Colors.white,
                  //                   fontFamily: "Arabic"),
                  //             ),
                  //             Text(
                  //               "صفحه: ${(cubit.noQuranPage ?? 0) + 1}",
                  //               style: const TextStyle(
                  //                   color: Colors.white54,
                  //                   fontFamily: "Arabic"),
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 Text(
                  //                   "اذهب الي",
                  //                   style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontFamily: "Arabic"),
                  //                 ),
                  //                 Icon(
                  //                   Icons.arrow_forward_ios_rounded,
                  //                   size: 14.0,
                  //                   color: Colors.white,
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //         const Spacer(),
                  //         SvgPicture.asset(
                  //           "assets/icons/lamp.svg",
                  //           height: height * 0.12,
                  //           width: height * 0.12,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 18.0),
                  Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  CustomCard(
                    onTap: () {
                      Navigator.pushNamed(context, AzkarList.routeName);
                    },
                    size: size,
                    image: "assets/icons/doaa.svg",
                    title: "حصن المسلم",
                  ),
                  CustomCard(
                    onTap: () => Navigator.pushNamed(
                      context,
                      Praise.routeName,
                    ),
                    size: size,
                    image: "assets/icons/memorize.svg",
                    title: "اذكر الله",
                  ),
                  CustomCard(
                    onTap: () => Navigator.pushNamed(
                      context,
                      Salah.routeName,
                    ),
                    size: size,
                    image: "assets/icons/salah.svg",
                    title: "يوميات مسلم",
                  ),
                  CustomCard(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HugView(),
                      ),
                    ),
                    size: size,
                    image: "assets/icons/kaaba.svg",
                    title: "الحج والعمره",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
