import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'bloc/azkar_cubit/azkar_cubit.dart';
import 'bloc/praise_cubit/praise_cubit.dart';
import 'bloc/prayer_cubit/prayer_cubit.dart';
import 'bloc/salah_cubit/salah_cubit.dart';
import 'bloc/zekr_cubit/zekr_cubit.dart';
import 'core/constant/prayer_time_constant.dart';
import 'core/date/date_formatter.dart';
import 'data_source/local/hive_helper.dart';
import 'data_source/local/json_helper.dart';
import 'data_source/remote/dio_helper.dart';
import 'repository/azkar_repository/azkar_repository.dart';
import 'repository/praise_repository/praise_repository.dart';
import 'repository/prayer_time_repository/prayer_time_repository.dart';
import 'repository/prayer_time_repository/save_prayer_time.dart';
import 'repository/salah_repositroy/salah_repository.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  getIt.registerFactory(() => AzkarCubit(azkarRepositiry: getIt()));
  getIt.registerFactory(() => PraiseCubit(praiseRepositiry: getIt()));
  getIt.registerFactory(() => ZekrCubit());
  getIt.registerFactory(
      () => PrayerCubit(pryaerTimeRepositiory: getIt(), hiveHelper: getIt()));
  getIt.registerFactory(() => SalahCubit(salahRepositiry: getIt()));

  // Use cases

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

  // Data sources
  getIt.registerLazySingleton(() => JsonHelper());
  getIt.registerLazySingleton(() => HiveHelper());

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
