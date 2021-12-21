import 'praise_state.dart';
import '../../models/praise_model.dart';
import '../../repository/praise_repository/praise_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PraiseCubit extends Cubit<PraiseState> {
  final PraiseRepositiry praiseRepositiry;
  PraiseCubit({
    required this.praiseRepositiry,
  }) : super(PraiseInitial());

  static PraiseCubit get(context) => BlocProvider.of(context);

  int sum = 0;
  void praiseCount() async {
    praiseModel = await praiseRepositiry.getListOfPraise();
    sum++;
    emit(PraiseScasses(sum: sum, praiseModel: praiseModel!));
  }

  PraiseModel? praiseModel;
  void getPraise() async {
    emit(PraiseLoading());
    try {
      praiseModel = await praiseRepositiry.getListOfPraise();
      emit(PraiseScasses(praiseModel: praiseModel!, sum: 0));
    } catch (e) {
      emit(PraiseError(message: e.toString()));
      addError(e);
    }
  }
}
