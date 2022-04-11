import 'package:equatable/equatable.dart';
import '../../models/hug_model.dart';

abstract class HugState extends Equatable {
  const HugState();

  @override
  List<Object> get props => [];
}

class HugInitial extends HugState {}

class HugLoading extends HugState {}

class HugScasses extends HugState {
  final HugModel hugModel;

  const HugScasses({
    required this.hugModel,
  });
  @override
  List<Object> get props => [hugModel];
}

class HugError extends HugState {
  final String message;
  const HugError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
