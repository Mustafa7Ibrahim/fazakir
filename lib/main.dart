import 'package:fazakir/core/date/time_zone_co.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/quran_cubit/quran_cubit.dart';
import 'bloc/save_quran_page_cubit/save_quran_page_cubit.dart';
import 'core/notification/notification.dart';
import 'core/route_config/route_config.dart';
import 'core/theme_app.dart';
import 'data_source/local/hive_helper.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';
import 'myobserver.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationSet.init();
  await HiveHelper.init();
  await TimeZoneCo.configureLocalTimeZone();
  await di.init();
  final String initialRoute = await NotificationSet.decideWhichRouteToLanch();

  BlocOverrides.runZoned(
    () => runApp(MyApp(initRoute: initialRoute)),
    blocObserver: MyObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.initRoute}) : super(key: key);

  final String initRoute;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuranCubit>(create: (context) => getIt<QuranCubit>()),
        BlocProvider<SaveQuranPageCubit>(
            create: (context) => getIt<SaveQuranPageCubit>()..getQuranPage()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale("ar"),
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        theme: ThemeApp.lightTheme,
        darkTheme: ThemeApp.darkTheme,
        themeMode: ThemeMode.light,
        initialRoute: initRoute,
        onGenerateRoute: RouteConfig(context).generateRoute,
      ),
    );
  }
}
