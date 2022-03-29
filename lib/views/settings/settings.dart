import 'package:fazakir/views/settings/contect_us/contect_us.dart';
import 'package:fazakir/views/settings/privacy_policy/privacy_policy.dart';
import 'package:fazakir/views/settings/terms_and_conditions/terms_and_conditions.dart';
import 'package:flutter/material.dart';

import '../../widgets/costum_card.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  static const routeName = '/settings';

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
              Navigator.pushNamed(context, PrivacyPolicy.routeName);
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
        ],
      ),
    );
  }
}
