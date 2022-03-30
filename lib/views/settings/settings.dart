import 'package:fazakir/views/settings/contect_us/contect_us.dart';
import 'package:fazakir/views/settings/privacy_policy/privacy_policy.dart';
import 'package:fazakir/views/settings/terms_and_conditions/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../widgets/costum_card.dart';
import 'info_app/info_app.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? localRsult;

  Future getCurrentAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    setState(() {
      localRsult = version;
    });
    return version;
  }

  @override
  void initState() {
    super.initState();
    getCurrentAppVersion();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("الأعدادات")),
      body: Column(
        children: [
          CustomCard(
            onTap: () {
              Navigator.pushNamed(context, ContactUS.routeName);
            },
            size: size,
            title: "مركز المساعدة",
            colors: [
              Theme.of(context).colorScheme.secondary,
              Color.fromARGB(255, 33, 131, 131),
            ],
          ),
          CustomCard(
            onTap: () {
              Navigator.pushNamed(context, InfoApp.routeName);
            },
            size: size,
            title: "عن التطبيق",
            colors: [
              Theme.of(context).colorScheme.secondary,
              Color.fromARGB(255, 37, 62, 131),
            ],
          ),
          CustomCard(
            onTap: () {
              Navigator.pushNamed(context, PrivacyPolicy.routeName);
            },
            size: size,
            title: "سياسة الخصوصية",
            colors: [
              Theme.of(context).colorScheme.secondary,
              const Color(0xff8DA5E8),
            ],
          ),
          CustomCard(
            onTap: () {
              Navigator.pushNamed(context, TermsAndConditions.routeName);
            },
            size: size,
            title: "الشروط والأحكام",
            colors: [
              Theme.of(context).colorScheme.secondary,
              const Color(0xffBD84CA),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "الإصدار\n$localRsult",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16, color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
