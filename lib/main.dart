import 'package:fazakir/views/home/home.dart';
import 'package:flutter/material.dart';

import 'core/theme_app.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeApp.lightTheme,
      // darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}
