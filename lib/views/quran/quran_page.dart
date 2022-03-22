import 'package:fazakir/bloc/quran_cubit/quran_cubit.dart';
import 'package:fazakir/bloc/quran_cubit/quran_state.dart';
import 'package:fazakir/core/them_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection_container.dart';

class QuranPageScrean extends StatefulWidget {
  const QuranPageScrean({Key? key, this.index = 0}) : super(key: key);
  final int? index;
  static const routeName = '/quranPage';
  @override
  State<QuranPageScrean> createState() => _QuranPageScreanState();
}

class _QuranPageScreanState extends State<QuranPageScrean> {
  late int creindex;
  bool showAppBar = false;

  String getVerseEndSymbol(int verseNumber) {
    String arabicNumeric = " ";

    for (int i = verseNumber.toString().length - 1; i >= 0; i--) {
      String digit = verseNumber.toString().split("")[i];
      if (digit == "0") {
        arabicNumeric += "٠";
      } else if (digit == "1") {
        arabicNumeric += "۱";
      } else if (digit == "2") {
        arabicNumeric += "۲";
      } else if (digit == "3") {
        arabicNumeric += "۳";
      } else if (digit == "4") {
        arabicNumeric += "٤";
      } else if (digit == "5") {
        arabicNumeric += "٥";
      } else if (digit == "6") {
        arabicNumeric += "٦";
      } else if (digit == "7") {
        arabicNumeric += "۷";
      } else if (digit == "8") {
        arabicNumeric += "۸";
      } else if (digit == "9") {
        arabicNumeric += "۹";
      }
    }

    return arabicNumeric.split("").reversed.join();
  }

  late PageController pageController;
  @override
  void initState() {
    creindex = widget.index!;
    pageController = PageController(
      initialPage: creindex,
      keepPage: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Colors.transparent,
            )
          : null,
      body: BlocProvider(
        create: (context) => getIt<QuranCubit>()..getpage(),
        child: BlocConsumer<QuranCubit, QuranState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is QuranPageLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is QuranPageError) {
              return Center(child: Text(state.message));
            } else if (state is QuranPageScasses) {
              return SafeArea(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showAppBar = !showAppBar;
                    });
                  },
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: state.quranPageModel.page.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: index % 2 == 0
                                  ? const EdgeInsets.only(right: 18, bottom: 12)
                                  : const EdgeInsets.only(left: 18, bottom: 12),
                              decoration: BoxDecoration(
                                  color: ThemeHandler().isDark()
                                      ? Theme.of(context)
                                          .scaffoldBackgroundColor
                                      : const Color(0xFFF5F5F5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      blurRadius: 2,
                                      offset: index % 2 == 0
                                          ? const Offset(-1, 0)
                                          : const Offset(1, 0),
                                    ),
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      blurRadius: 1,
                                      offset: index % 2 == 0
                                          ? const Offset(13, 1)
                                          : const Offset(-13, 1),
                                    ),
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      blurRadius: 1,
                                      offset: index % 2 == 0
                                          ? const Offset(12, 0)
                                          : const Offset(-12, 0),
                                    ),
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      blurRadius: 1,
                                      offset: index % 2 == 0
                                          ? const Offset(7, 0)
                                          : const Offset(-7, 0),
                                    ),
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      blurRadius: 1,
                                      offset: index % 2 == 0
                                          ? const Offset(6, 0)
                                          : const Offset(-6, 0),
                                    ),
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.5),
                                      blurRadius: 1,
                                      offset: index % 2 == 0
                                          ? const Offset(1, 0)
                                          : const Offset(-1, 0),
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        state.quranPageModel.page[index].name
                                            .toString(),
                                        style: const TextStyle(
                                            fontFamily: "Arabic"),
                                      ),
                                      Text(
                                        state.quranPageModel.page[index].jza
                                            .toString(),
                                        style: const TextStyle(
                                            fontFamily: "Arabic"),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Expanded(
                                    child: Container(
                                        // width: double.infinity,
                                        // height: MediaQuery.of(context).size.height,
                                        padding: const EdgeInsets.all(0.0),
                                        child: Image.asset(
                                          "assets/images/quran-images/page${index + 1}.png",
                                          color: ThemeHandler().isDark()
                                              ? const Color(0xFFF0EFEF)
                                              : null,
                                        )),
                                  ),
                                  Center(
                                    child: Text(
                                        getVerseEndSymbol(index + 1).toString(),
                                        style: const TextStyle(
                                            fontFamily: "Arabic",
                                            fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                          "الحزب " +
                                              getVerseEndSymbol(int.parse(state
                                                  .quranPageModel
                                                  .page[index]
                                                  .haz
                                                  .toString())),
                                          style: const TextStyle(
                                              fontFamily: "Arabic",
                                              fontSize: 16)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            !ThemeHandler().isDark()
                                ? Container(
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.15),
                                          const Color(0xFFFFF9B6)
                                              .withOpacity(0.0),
                                          const Color(0xFFFFF9B6)
                                              .withOpacity(0.0),
                                          const Color(0xFFFFF9B6)
                                              .withOpacity(0.0),
                                          Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.15),
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        );
                      }),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
