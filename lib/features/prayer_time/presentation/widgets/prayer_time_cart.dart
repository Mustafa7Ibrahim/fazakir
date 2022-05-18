import 'package:flutter/material.dart';

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
          : Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: Row(
        children: [
          Text(
            prayName,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Theme.of(context).colorScheme.surface, fontSize: 18),
          ),
          const Spacer(),
          Text(
            prayTime,
            // DateTime.parse(prayTime).toLocal().toString(),
            // DateFormat.jm("ar_SA").format(DateTime.parse(prayTime).toLocal()),
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 18,
                ),
            locale: Localizations.localeOf(context),
          ),
          const SizedBox(width: 12.0),
          Icon(prayIcon, color: prayIconColor),
        ],
      ),
    );
  }
}
