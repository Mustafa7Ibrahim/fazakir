import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fazakir/models/azkar_model.dart';
import 'package:fazakir/repository/azkar_repository/azkar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit({required this.azkarRepositiry}) : super(AzkarInitial());

  final AzkarRepositiry azkarRepositiry;

  static AzkarCubit get(context) => BlocProvider.of(context);

  void getAzkar() async {
    emit(AzkarLoading());
    try {
      final List<AzkarModel> azkar = await azkarRepositiry.getListOfAzkar();
      emit(AzkarLoaded(azkar));
    } catch (e) {
      emit(AzkarError(e.toString()));
      addError(e);
    }
  }
}
