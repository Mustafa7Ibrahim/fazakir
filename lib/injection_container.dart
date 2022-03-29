import 'package:dio/dio.dart';
import 'package:fazakir/use_cases/prayer_times_use_case/prayer_calendar_use_case.dart';
import 'package:get_it/get_it.dart';

import 'bloc/azkar_cubit/azkar_cubit.dart';
import 'bloc/hug_cubit/hug_cubit.dart';
import 'bloc/praise_cubit/praise_cubit.dart';
import 'bloc/prayer_cubit/prayer_cubit.dart';
import 'bloc/quran_cubit/quran_cubit.dart';
import 'bloc/salah_cubit/salah_cubit.dart';
import 'bloc/save_quran_page_cubit/save_quran_page_cubit.dart';
import 'bloc/zekr_cubit/zekr_cubit.dart';
import 'core/constant/prayer_time_constant.dart';
import 'core/date/date_formatter.dart';
import 'data_source/local/hive_helper.dart';
import 'data_source/local/json_helper.dart';
import 'data_source/remote/dio_helper.dart';
import 'repository/azkar_repository/azkar_repository.dart';
import 'repository/hug_repository/hug_repository.dart';
import 'repository/praise_repository/praise_repository.dart';
import 'repository/prayer_time_repository/prayer_time_repository.dart';
import 'repository/prayer_time_repository/save_prayer_time.dart';
import 'repository/quran_repository/quran_repository.dart';
import 'repository/salah_repositroy/salah_repository.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  getIt.registerFactory(() => AzkarCubit(azkarRepositiry: getIt()));
  getIt.registerFactory(
      () => PraiseCubit(praiseRepositiry: getIt(), hiveHelper: getIt()));
  getIt.registerFactory(() => ZekrCubit());
  getIt.registerFactory(
    () => PrayerCubit(
      prayerCalenderUseCase: getIt(),
      hiveHelper: getIt(),
    ),
  );
  getIt.registerFactory(() => SalahCubit(salahRepositiry: getIt()));
  getIt.registerFactory(() => QuranCubit(quranRepository: getIt()));
  getIt.registerFactory(() => SaveQuranPageCubit(hiveHelper: getIt()));
  getIt.registerFactory(() => HugCubit(hugRepositiry: getIt()));

  // Repository
  getIt.registerLazySingleton(() => AzkarRepositiry(jsonHelper: getIt()));
  getIt.registerLazySingleton(() => PraiseRepositiry(jsonHelper: getIt()));
  getIt.registerLazySingleton(
    () => PryaerTimeRepositiory(
      dioHelper: getIt(),
      savePrayerTimes: getIt(),
      formatter: getIt(),
    ),
  );
  getIt.registerLazySingleton(() => SavePrayerTimes(hiveHelper: getIt()));
  getIt.registerLazySingleton(() => SalahRepositiry(jsonHelper: getIt()));
  getIt.registerLazySingleton(() => QuranRepository(jsonHelper: getIt()));
  getIt.registerLazySingleton(() => HugRepositiry(jsonHelper: getIt()));

  // Data sources
  getIt.registerLazySingleton(() => JsonHelper());
  getIt.registerLazySingleton(() => HiveHelper());

  // user case
  getIt.registerLazySingleton(
    () => PrayerCalenderUseCase(
      dioHelper: getIt(),
      savePrayerTimes: getIt(),
    ),
  );

  //! Core
  getIt.registerLazySingleton(() => DateFormatter());

  //! External

  getIt.registerLazySingleton(() => DioHelper(dio: getIt()));
  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: PrayerTimeConstant.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    ),
  );
}
