import 'package:bloc/bloc.dart';
import 'package:fazakir/bloc/quran_cubit/quran_state.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/models/quran_page_model.dart';
import 'package:fazakir/models/soura_detals_model.dart';
import 'package:fazakir/repository/quran_repository/quran_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit({required this.quranRepository, required this.hiveHelper})
      : super(QuranInitial());

  final QuranRepository quranRepository;
  final HiveHelper hiveHelper;

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

  void saveQuranPage({required String key, required dynamic value}) async {
    emit(SaveQuranPageLoading());
    try {
      hiveHelper.putData(key, value);
      emit(SaveQuranPageScasses());
    } catch (e) {
      emit(SaveQuranPageError(message: e.toString()));
      addError(e);
    }
  }

  void getQuranPage({required String key}) async {
    emit(GetQuranPageLoading());
    try {
      dynamic value = hiveHelper.getData(key);
      emit(GetQuranPageScasses(value));
    } catch (e) {
      emit(GetQuranPageError(message: e.toString()));
      addError(e);
    }
  }
}
