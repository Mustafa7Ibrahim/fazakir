import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
    colorScheme: const ColorScheme(
      primary: Color(0xff2EB3AF),
      secondary: Color(0xffA5D2D6),
      surface: Color(0xffffffff),
      background: Color(0xffffffff),
      error: Color(0xffB00020),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xff000000),
      onBackground: Color(0xff000000),
      onError: Color(0xffB00020),
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Color(0xffffffff),
      titleTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        letterSpacing: 0.15,
      ),
      iconTheme: IconThemeData(color: Color(0xFF000000)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0.0,
      backgroundColor: Color(0xffCBE4EB),
      unselectedIconTheme: IconThemeData(color: Color(0xff65C7A8)),
      enableFeedback: true,
      selectedIconTheme: IconThemeData(color: Color(0xff2EB3AF)),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff2EB3AF),
    ),
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontFamily: "quran",
        letterSpacing: 0.15,
        fontSize: 20,
      ),
      headline6: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.15,
      ),
      caption: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.4,
      ),
      button: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 1.25,
      ),
      overline: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 1.5,
      ),
      subtitle1: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.1,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    backgroundColor: const Color(0xff010313),
    scaffoldBackgroundColor: const Color(0xff010313),
    colorScheme: const ColorScheme(
      primary: Color(0xff2EB3AF),
      secondary: Color(0xffA5D2D6),
      surface: Color(0xff010313),
      background: Color(0xff010313),
      error: Color(0xffEF4444),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff010313),
      onSurface: Colors.white70,
      onBackground: Color(0xffffffff),
      onError: Color(0xffCF6679),
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Color(0xff010313),
      titleTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        letterSpacing: 0.15,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0.0,
      backgroundColor: Color(0xff010313),
      unselectedIconTheme: IconThemeData(color: Color(0xff65C7A8)),
      enableFeedback: true,
      selectedIconTheme: IconThemeData(color: Color(0xff2EB3AF)),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff65C7A8),
    ),
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontFamily: "quran",
        letterSpacing: 0.15,
        fontSize: 20,
      ),
      headline6: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.15,
      ),
      caption: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.4,
      ),
      button: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 1.25,
      ),
      overline: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 1.5,
      ),
      subtitle1: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        fontFamily: "Othmani",
        letterSpacing: 0.1,
      ),
    ),
  );
}
