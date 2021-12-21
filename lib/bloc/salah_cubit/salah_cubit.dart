import 'salah_satate.dart';
import '../../models/salah_model.dart';
import '../../repository/salah_repositroy/salah_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalahCubit extends Cubit<SalahState> {
  final SalahRepositiry salahRepositiry;
  SalahCubit({
    required this.salahRepositiry,
  }) : super(SalahInitial());

  static SalahCubit get(context) => BlocProvider.of(context);

  void getSalah() async {
    emit(SalahLoading());
    try {
      SalahModel salahModel = await salahRepositiry.getListOfSalah();
      emit(SalahScasses(salahModel: salahModel));
    } catch (e) {
      emit(SalahError(message: e.toString()));
      addError(e);
    }
  }
}
