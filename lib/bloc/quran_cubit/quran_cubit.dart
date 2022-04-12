import 'dart:developer';

import '../../data_source/local/hive_helper.dart';
import 'quran_state.dart';
import '../../models/quran_page_model.dart';
import '../../models/soura_detals_model.dart';
import '../../repository/quran_repository/quran_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit({required this.quranRepository, required this.hiveHelper})
      : super(QuranInitial());

  final QuranRepository quranRepository;
  final HiveHelper hiveHelper;
  int markPageNo = 0;

  static QuranCubit get(context) => BlocProvider.of(context);

  void getsoura() async {
    emit(SouraLoading());
    try {
      SouraModel souraModel = await quranRepository.getListOfSoura();
      emit(SouraScasses(souraModel: souraModel));
    } catch (e) {
      emit(SouraError(message: e.toString()));
      addError(e);
    }
  }

  void getpage() async {
    emit(QuranPageLoading());
    try {
      QuranPageModel quranPageModel =
          await quranRepository.getListOfQuranPage();
      emit(QuranPageScasses(quranPageModel: quranPageModel));
    } catch (e) {
      emit(QuranPageError(message: e.toString()));
      addError(e);
    }
  }

  addMarkPage({dynamic value = 0}) async {
    try {
      await hiveHelper.putData("MarkPage", value);
      markPageNo = await hiveHelper.getData("MarkPage");
      emit(state);
    } catch (e) {
      log(e.toString());
    }
  }

  getMarkPage() async {
    try {
      markPageNo = await hiveHelper.getData("MarkPage");
      emit(state);
    } catch (e) {
      log(e.toString());
    }
  }
}
