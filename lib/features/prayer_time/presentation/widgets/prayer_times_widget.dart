import 'package:fazakir/features/prayer_time/presentation/widgets/prayer_time_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../data/models/adhantimes/adhantimes_model.dart';

class PrayerTimesWidget extends StatelessWidget {
  const PrayerTimesWidget({Key? key, required this.prayerTimes})
      : super(key: key);

  final AdhanTimesModel prayerTimes;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DateFormat.yMMMMd("ar_SA").format(DateTime.now()),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/mosque2.svg",
            height: size.height * 0.24,
            width: size.width,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.fajr),
            currentPray: true,
            prayName: "الفجْر",
            prayIcon: Icons.dark_mode_outlined,
            prayIconColor: Colors.black,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.sunrise),
            currentPray: false,
            prayName: "الشروق",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.dhuhr),
            currentPray: false,
            prayName: "الظُّهْر",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.asr),
            currentPray: false,
            prayName: "العَصر",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.maghrib),
            currentPray: false,
            prayName: "المَغرب",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dateFormat(prayerTimes.isha),
            currentPray: false,
            prayName: "العِشاء",
            prayIcon: Icons.dark_mode_outlined,
            prayIconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
