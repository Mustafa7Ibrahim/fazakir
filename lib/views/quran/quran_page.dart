import 'package:fazakir/bloc/quran_cubit/quran_cubit.dart';
import 'package:fazakir/bloc/quran_cubit/quran_state.dart';
import 'package:fazakir/bloc/save_quran_page_cubit/save_quran_page_cubit.dart';
import 'package:fazakir/core/them_helper.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
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
    BlocProvider.of<QuranCubit>(context).getpage();
    pageController = PageController(
      initialPage: creindex,
      keepPage: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuranCubit, QuranState>(
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
                    onPageChanged: (value) {
                      BlocProvider.of<SaveQuranPageCubit>(context)
                          .saveQuranPage(key: "quranPageNumber", value: value);
                      BlocProvider.of<SaveQuranPageCubit>(context)
                          .saveQuranPage(
                              key: "nameSoura",
                              value: state.quranPageModel.page[value].name);

                      BlocProvider.of<SaveQuranPageCubit>(context)
                          .getQuranPage();
                    },
                    controller: pageController,
                    itemCount: state.quranPageModel.page.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            margin: index % 2 == 0
                                ? const EdgeInsets.only(
                                    right: 3,
                                  )
                                : const EdgeInsets.only(
                                    left: 3,
                                  ),
                            decoration: BoxDecoration(
                                color: ThemeHandler().isDark()
                                    ? Theme.of(context).scaffoldBackgroundColor
                                    : const Color(0xFFF5F5F5),
                                borderRadius: index % 2 != 0
                                    ? const BorderRadius.only(
                                        topRight: Radius.elliptical(100, 20),
                                        bottomRight: Radius.elliptical(100, 20))
                                    : const BorderRadius.only(
                                        topLeft: Radius.elliptical(100, 20),
                                        bottomLeft: Radius.elliptical(100, 20),
                                      ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    blurRadius: 2,
                                    offset: index % 2 == 0
                                        ? const Offset(-1, 0)
                                        : const Offset(1, 0),
                                  ),
                                  BoxShadow(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    blurRadius: 1,
                                    offset: index % 2 == 0
                                        ? const Offset(0, 1)
                                        : const Offset(-0, 1),
                                  ),
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
                                      style:
                                          const TextStyle(fontFamily: "Arabic"),
                                    ),
                                    Text(
                                      state.quranPageModel.page[index].jza
                                          .toString(),
                                      style:
                                          const TextStyle(fontFamily: "Arabic"),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        invertColors: ThemeHandler().isDark(),
                                        image: AssetImage(
                                          "assets/images/quran-images/page${index + 1}.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                      getVerseEndSymbol(index + 1).toString(),
                                      style: const TextStyle(
                                          fontFamily: "Arabic", fontSize: 18)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                        "الحزب " +
                                            getVerseEndSymbol(int.parse(state
                                                .quranPageModel.page[index].haz
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
                          showAppBar
                              ? Positioned(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, top: 10),
                                    child: InkWell(
                                      onTap: () => Navigator.of(context).pop(),
                                      child: Container(
                                        height: 40,
                                        width: 45,
                                        // padding:
                                        //     const EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 3,
                                                  offset: Offset(1, 3))
                                            ]),
                                        child: Center(
                                            child: Icon(
                                          Icons.arrow_back,
                                          size: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                        )),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          //
                        ],
                      );
                    }),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
