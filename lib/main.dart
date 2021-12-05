import 'package:bloc/bloc.dart';
import 'package:fazakir/bloc/azkar_cubit/op.dart';
import 'package:fazakir/views/home/home.dart';
import 'package:flutter/material.dart';

import 'core/theme_app.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  BlocOverrides.runZoned(
    () {
      // ...
    },
    blocObserver: MyBlocObserver(),
  );
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
      locale: const Locale("ar"),
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeApp.lightTheme,
      // darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}
