import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    applyElevationOverlayColor: true,
    scaffoldBackgroundColor: const Color(0xffffffff),
    colorScheme: const ColorScheme(
      primary: Color(0xff218B5F),
      primaryVariant: Color(0xff20695F),
      secondary: Color(0xffA5D2D6),
      secondaryVariant: Color(0xffA5D2D6),
      surface: Color(0xffCBE4EB),
      background: Color(0xffCBE4EB),
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
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Color(0xffffffff),
      titleTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        letterSpacing: 0.15,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0.0,
      backgroundColor: Color(0xffCBE4EB),
      unselectedIconTheme: IconThemeData(
        color: Color(0xff218B5F),
      ),
      enableFeedback: true,
      selectedIconTheme: IconThemeData(
        color: Color(0xff20695F),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff218B5F),
    ),
  );

  // static ThemeData darkTheme = ThemeData(
  //   backgroundColor: const Color(0xff010313),
  //   scaffoldBackgroundColor: const Color(0xff010313),
  //   colorScheme: const ColorScheme(
  //     primary: Color(0xffB9A2D8),
  //     primaryVariant: Color(0xff9345F2),
  //     secondary: Color(0xffF9AF8D),
  //     secondaryVariant: Color(0xffE6704A),
  //     surface: Color(0xff010313),
  //     background: Color(0xff010313),
  //     error: Color(0xffEF4444),
  //     onPrimary: Color(0xffffffff),
  //     onSecondary: Color(0xff011341),
  //     onSurface: Color(0xffffffff),
  //     onBackground: Color(0xffffffff),
  //     onError: Color(0xffCF6679),
  //     brightness: Brightness.dark,
  //   ),
  //   appBarTheme: const AppBarTheme(
  //     centerTitle: true,
  //     elevation: 0.0,
  //     systemOverlayStyle: SystemUiOverlayStyle.dark,
  //     backgroundColor: Colors.white,
  //     titleTextStyle: TextStyle(
  //       color: Colors.black,
  //       fontWeight: FontWeight.w600,
  //       fontSize: 20.0,
  //       letterSpacing: 0.15,
  //     ),
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     // elevation: 0.0,
  //     backgroundColor: Color(0xff010313),
  //     unselectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xffB9A2D8),
  //     ),
  //     enableFeedback: true,
  //     selectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xff9345F2),
  //     ),
  //   ),
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     backgroundColor: Color(0xff9345F2),
  //   ),
  // );

  // static ThemeData lightTheme = ThemeData(
  //   scaffoldBackgroundColor: const Color(0xffFAF8FC),
  //   colorScheme: const ColorScheme(
  //     primary: Color(0xff9345F2),
  //     primaryVariant: Color(0xff260F68),
  //     secondary: Color(0xffF9AF8D),
  //     secondaryVariant: Color(0xffE6704A),
  //     surface: Color(0xffFAF8FC),
  //     background: Color(0xffFAF8FC),
  //     error: Color(0xffB00020),
  //     onPrimary: Color(0xffffffff),
  //     onSecondary: Color(0xff000000),
  //     onSurface: Color(0xff000000),
  //     onBackground: Color(0xff000000),
  //     onError: Color(0xffB00020),
  //     brightness: Brightness.light,
  //   ),
  //   appBarTheme: const AppBarTheme(
  //     centerTitle: true,
  //     elevation: 0.0,
  //     systemOverlayStyle: SystemUiOverlayStyle.light,
  //     backgroundColor: Colors.white,
  //     titleTextStyle: TextStyle(
  //       color: Colors.black,
  //       fontWeight: FontWeight.w600,
  //       fontSize: 20.0,
  //       letterSpacing: 0.15,
  //     ),
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     // elevation: 0.0,
  //     backgroundColor: Color(0xffFAF8FC),
  //     unselectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xff2E0D8A),
  //     ),
  //     enableFeedback: true,
  //     selectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xff260F68),
  //     ),
  //   ),
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     backgroundColor: Color(0xff9345F2),
  //   ),
  // );

  // static ThemeData darkTheme = ThemeData(
  //   backgroundColor: const Color(0xff010313),
  //   scaffoldBackgroundColor: const Color(0xff010313),
  //   colorScheme: const ColorScheme(
  //     primary: Color(0xffB9A2D8),
  //     primaryVariant: Color(0xff9345F2),
  //     secondary: Color(0xffF9AF8D),
  //     secondaryVariant: Color(0xffE6704A),
  //     surface: Color(0xff010313),
  //     background: Color(0xff010313),
  //     error: Color(0xffEF4444),
  //     onPrimary: Color(0xffffffff),
  //     onSecondary: Color(0xff011341),
  //     onSurface: Color(0xffffffff),
  //     onBackground: Color(0xffffffff),
  //     onError: Color(0xffCF6679),
  //     brightness: Brightness.dark,
  //   ),
  //   appBarTheme: const AppBarTheme(
  //     centerTitle: true,
  //     elevation: 0.0,
  //     systemOverlayStyle: SystemUiOverlayStyle.light,
  //     backgroundColor: Colors.white,
  //     titleTextStyle: TextStyle(
  //       color: Colors.black,
  //       fontWeight: FontWeight.w600,
  //       fontSize: 20.0,
  //       letterSpacing: 0.15,
  //     ),
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     // elevation: 0.0,
  //     backgroundColor: Color(0xff010313),
  //     unselectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xffB9A2D8),
  //     ),
  //     enableFeedback: true,
  //     selectedIconTheme: IconThemeData(
  //       size: 14.0,
  //       color: Color(0xff9345F2),
  //     ),
  //   ),
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     backgroundColor: Color(0xff9345F2),
  //   ),
  // );
}
