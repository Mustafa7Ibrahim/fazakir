import 'package:fazakir/bloc/quran_cubit/quran_state.dart';
import 'package:fazakir/models/quran_page_model.dart';
import 'package:fazakir/models/soura_detals_model.dart';
import 'package:fazakir/repository/quran_repository/quran_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit({required this.quranRepository}) : super(QuranInitial());

  final QuranRepository quranRepository;

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
}
