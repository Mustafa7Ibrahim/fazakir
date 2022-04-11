import 'save_quran_page_state.dart';
import '../../data_source/local/hive_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveQuranPageCubit extends Cubit<SaveQuranPageState> {
  SaveQuranPageCubit({required this.hiveHelper})
      : super(SaveQuranPageInitial());

  final HiveHelper hiveHelper;

  static SaveQuranPageCubit get(context) => BlocProvider.of(context);

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

  String? nameSoura;
  int? noQuranPage;
  dynamic getQuranPage() async {
    emit(GetQuranPageLoading());
    try {
      noQuranPage = hiveHelper.getData("quranPageNumber");
      nameSoura = hiveHelper.getData("nameSoura");

      emit(GetQuranPageScasses());
    } catch (e) {
      emit(GetQuranPageError(message: e.toString()));
      addError(e);
    }
  }
}
