import 'package:fazakir/bloc/zekr_cubit/zekr_cubit.dart';
import 'package:fazakir/models/azkar_model.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'zekr.dart';

class ZekrList extends StatefulWidget {
  const ZekrList({Key? key, required this.azkarModel}) : super(key: key);

  final AzkarModel azkarModel;

  @override
  State<ZekrList> createState() => _ZekrListState();
}

class _ZekrListState extends State<ZekrList> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.azkarModel.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12.0),
          Flexible(
            flex: 16,
            child: PageView.builder(
              controller: pageController,
              itemCount: widget.azkarModel.content.length,
              itemBuilder: (context, index) {
                return BlocProvider(
                  create: (context) => ZekrCubit(),
                  child: BlocListener<ZekrCubit, int>(
                    listener: (context, state) {
                      if (state == int.parse(widget.azkarModel.content[index].count)) {
                        pageController.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Zekr(
                      size: size,
                      zekrModel: widget.azkarModel.content[index],
                      index: index,
                      total: widget.azkarModel.content.length,
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: widget.azkarModel.content.length,
                effect: ScrollingDotsEffect(
                  activeDotColor: Theme.of(context).colorScheme.primary,
                  fixedCenter: true,
                  maxVisibleDots: 7,
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
        ],
      ),
    );
  }
}
