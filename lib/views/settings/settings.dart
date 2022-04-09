import 'package:fazakir/views/settings/contect_us/contect_us.dart';
import 'package:fazakir/views/settings/privacy_policy/privacy_policy.dart';
import 'package:fazakir/views/settings/terms_and_conditions/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../bloc/theme_mode_cubit/them_model_cubit.dart';
import '../../core/them_helper.dart';
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
    bool themMode = ThemeHandler().isDark(context);

    return Scaffold(
      appBar: AppBar(title: const Text("الأعدادات")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              onTap: () {
                BlocProvider.of<ThemeModeCubit>(context).changeTheme();
              },
              size: size,
              title: themMode ? "الوضع الليلي " : "الوضع النهاري",
              colorstyle: themMode ? null : const Color.fromARGB(255, 0, 0, 0),
              colors: [
                Theme.of(context).colorScheme.secondary,
                themMode
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 241, 241, 241),
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
                const Color.fromARGB(255, 37, 62, 131),
              ],
            ),
            CustomCard(
              onTap: () {
                Navigator.pushNamed(context, ContactUS.routeName);
              },
              size: size,
              title: "مركز المساعدة",
              colors: [
                Theme.of(context).colorScheme.secondary,
                const Color.fromARGB(255, 33, 131, 131),
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
            const SizedBox(
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
      ),
    );
  }
}
