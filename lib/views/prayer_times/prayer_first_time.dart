import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'ask_to_get_location.dart';

class PrayerFirstTimeSet extends StatefulWidget {
  const PrayerFirstTimeSet({Key? key}) : super(key: key);

  @override
  State<PrayerFirstTimeSet> createState() => _PrayerFirstTimeState();
}

class _PrayerFirstTimeState extends State<PrayerFirstTimeSet> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 2,
                effect: WormEffect(
                  activeDotColor: Theme.of(context).colorScheme.primary,
                ),
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
          Flexible(
            flex: 9,
            child: PageView.builder(
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, index) {
                return index == 0 ? AskToGetCurrentLocation(size: size) : Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
