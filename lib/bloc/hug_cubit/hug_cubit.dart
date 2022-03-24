import 'package:fazakir/models/hug_model.dart';
import 'package:fazakir/repository/hug_repository/hug_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'hug_state.dart';

class HugCubit extends Cubit<HugState> {
  final HugRepositiry hugRepositiry;
  HugCubit({
    required this.hugRepositiry,
  }) : super(HugInitial());

  static HugCubit get(context) => BlocProvider.of(context);

  void getHug() async {
    emit(HugLoading());
    try {
      HugModel hugModel = await hugRepositiry.getListOfHug();
      emit(HugScasses(hugModel: hugModel));
    } catch (e) {
      emit(HugError(message: e.toString()));
      addError(e);
    }
  }
}
