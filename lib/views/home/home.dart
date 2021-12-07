import 'dart:ui';

import 'package:fazakir/views/azkar/azkar_list.dart';
import 'package:fazakir/views/widgets/costum_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinusoidal/wave.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff2EB3AF),
                        Color(0xff65C7A8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0.0,
                        child: Sinusoidal(
                          model: const SinusoidalModel(
                            formular: WaveFormular.travelling,
                            waves: 5,
                            amplitude: 20,
                            frequency: 0.5,
                          ),
                          child: Container(
                            color: Colors.white12,
                            height: size.height * 0.09,
                            width: size.width,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "متابعة القراءة",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                const SizedBox(height: 12.0),
                                const Text(
                                  "الرحمن",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "صفحه: 120",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "اذهب الي",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/icons/lamp.svg",
                              height: height * 0.12,
                              width: height * 0.12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          CustomCard(
                            onTap: () {},
                            size: size,
                            image: "assets/icons/quran.svg",
                            title: "القرآن الكريم",
                            colors: const [
                              Color(0xff47A1B7),
                              Color(0xff76BEC3),
                            ],
                            short: false,
                          ),
                          const SizedBox(height: 18.0),
                          CustomCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const AzkarList(),
                                ),
                              );
                            },
                            size: size,
                            image: "assets/icons/doaa.svg",
                            title: "حصن المسلم",
                            colors: const [
                              Color(0xffA582DB),
                              Color(0xffBD84CA),
                            ],
                            short: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 18.0),
                    Flexible(
                      child: Column(
                        children: [
                          CustomCard(
                            onTap: () {},
                            size: size,
                            image: "assets/icons/memorize.svg",
                            title: "حفظ",
                            colors: const [
                              Color(0xffD077A5),
                              Color(0xffCB82BB),
                            ],
                            short: true,
                          ),
                          const SizedBox(height: 18.0),
                          CustomCard(
                            onTap: () {},
                            size: size,
                            image: "assets/icons/salah.svg",
                            title: "مواقيت الصلاة",
                            colors: const [
                              Color(0xff7DA7E8),
                              Color(0xff8DA5E8),
                            ],
                            short: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
