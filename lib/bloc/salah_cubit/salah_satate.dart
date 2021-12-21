import 'package:equatable/equatable.dart';

import '../../models/salah_model.dart';

abstract class SalahState extends Equatable {
  const SalahState();
  @override
  List<Object> get props => [];
}

class SalahInitial extends SalahState {}

class SalahLoading extends SalahState {}

class SalahScasses extends SalahState {
  final SalahModel salahModel;

  const SalahScasses({
    required this.salahModel,
  });
  @override
  List<Object> get props => [salahModel];
}

class SalahError extends SalahState {
  final String message;
  const SalahError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
