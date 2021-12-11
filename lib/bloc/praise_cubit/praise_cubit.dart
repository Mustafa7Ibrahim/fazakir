import 'dart:developer';

import 'package:fazakir/models/praise_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fazakir/bloc/praise_cubit/praise_state.dart';
import 'package:fazakir/repository/praise_repository/praise_repository.dart';

class PraiseCubit extends Cubit<PraiseState> {
  final PraiseRepositiry praiseRepositiry;
  PraiseCubit({
    required this.praiseRepositiry,
  }) : super(PraiseInitial());

  static PraiseCubit get(context) => BlocProvider.of(context);

  int count = 0;
  int sum = 0;
  void praiseCount() {
    count++;
    sum++;
    emit(PraiseSum());
    log("count $count ,sum $sum");
  }

  PraiseModel? praiseModel;
  void getPraise() async {
    emit(PraiseLoading());
    try {
      praiseModel = await praiseRepositiry.getListOfPraise();
      emit(PraiseScasses(praiseModel: praiseModel!));
    } catch (e) {
      emit(PraiseError(message: e.toString()));
      addError(e);
    }
  }
}
