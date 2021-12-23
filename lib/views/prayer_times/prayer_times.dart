import '../../bloc/prayer_cubit/prayer_cubit.dart';
import '../../injection_container.dart';
import '../../models/data_model/data_model.dart';
import 'prayer_first_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({Key? key}) : super(key: key);

  static const routeName = '/prayer_time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<PrayerCubit>()..getPrayerTimes(),
        child: BlocConsumer<PrayerCubit, PrayerState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is PrayerLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PrayerLoaded) {
              return SingleChildScrollView(
                child: Text(state.dataModel.toString()),
              );
              // return PrayerTimes(dataModel: state.dataModel);
            }
            if (state is PrayerError) {
              return Center(child: Text(state.message));
            }
            if (state is PrayerFirstTime) {
              return const PrayerFirstTimeSet();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({Key? key, required this.dataModel}) : super(key: key);

  final DataModel dataModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(dataModel.date.readable),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24.0),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/mosque2.svg",
            height: size.height * 0.24,
            width: size.width,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Fajr,
            currentPray: true,
            prayName: "الفجْر",
            prayIcon: Icons.dark_mode_outlined,
            prayIconColor: Colors.black,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Sunrise,
            currentPray: false,
            prayName: "الشروق",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Dhuhr,
            currentPray: false,
            prayName: "الظُّهْر",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Asr,
            currentPray: false,
            prayName: "العَصر",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Maghrib,
            currentPray: false,
            prayName: "المَغرب",
            prayIcon: Icons.wb_sunny_outlined,
            prayIconColor: Colors.yellow,
          ),
          PrayerTimeCard(
            prayTime: dataModel.timings.Isha,
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

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({
    Key? key,
    required this.prayTime,
    required this.currentPray,
    required this.prayName,
    required this.prayIcon,
    required this.prayIconColor,
  }) : super(key: key);

  final bool currentPray;
  final String prayName;
  final IconData prayIcon;
  final Color prayIconColor;
  final String prayTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentPray
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.primaryVariant,
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text(
            prayName,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          const Spacer(),
          Text(
            DateFormat.jm().format(DateTime.parse(prayTime).toLocal()),
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          const SizedBox(width: 12.0),
          Icon(prayIcon, color: prayIconColor),
        ],
      ),
    );
  }
}
