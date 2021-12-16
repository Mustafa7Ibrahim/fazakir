import 'package:fazakir/bloc/salah_cubit/salah_satate.dart';
import 'package:fazakir/models/salah_model.dart';
import 'package:fazakir/repository/salah_repositroy/salah_repository.dart';
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
