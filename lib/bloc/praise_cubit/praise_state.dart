import 'package:equatable/equatable.dart';

import '../../models/praise_model.dart';

abstract class PraiseState extends Equatable {
  const PraiseState();
  @override
  List<Object> get props => [];
}

class PraiseInitial extends PraiseState {}

class PraiseLoading extends PraiseState {}

class PraiseScasses extends PraiseState {
  final PraiseModel praiseModel;
  final int sum;
  const PraiseScasses({
    required this.praiseModel,
    required this.sum,
  });
  @override
  List<Object> get props => [praiseModel, sum];
}

class PraiseError extends PraiseState {
  final String message;
  const PraiseError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
