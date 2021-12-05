import 'package:fazakir/bloc/azkar_cubit/azkar_cubit.dart';
import 'package:fazakir/repository/azkar_repository/azkar_repository.dart';
import 'package:get_it/get_it.dart';

import 'data_source/local/json_helper.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  getIt.registerFactory(() => AzkarCubit(azkarRepositiry: getIt()));

  // Use cases

  // Repository
  getIt.registerLazySingleton(() => AzkarRepositiry(jsonHelper: getIt()));

  // Data sources
  getIt.registerLazySingleton(() => JsonHelper());

  //! Core

  //! External
}
