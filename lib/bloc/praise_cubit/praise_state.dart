import 'package:equatable/equatable.dart';

import 'package:fazakir/models/praise_model.dart';

abstract class PraiseState extends Equatable {
  const PraiseState();
  @override
  List<Object> get props => [];
}

class PraiseInitial extends PraiseState {}

class PraiseLoading extends PraiseState {}

class PraiseScasses extends PraiseState {
  final PraiseModel praiseModel;
  const PraiseScasses({
    required this.praiseModel,
  });
  @override
  List<Object> get props => [praiseModel];
}

class PraiseError extends PraiseState {
  final String message;
  const PraiseError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}

class PraiseSum extends PraiseState {}
