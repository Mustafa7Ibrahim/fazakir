part of 'azkar_cubit.dart';

abstract class AzkarState extends Equatable {
  const AzkarState();

  @override
  List<Object> get props => [];
}

class AzkarInitial extends AzkarState {}

class AzkarLoading extends AzkarState {}

class AzkarLoaded extends AzkarState {
  final List<AzkarModel> azkarModel;

  const AzkarLoaded(this.azkarModel);

  @override
  List<Object> get props => [azkarModel];
}

class AzkarError extends AzkarState {
  final String message;

  const AzkarError(this.message);

  @override
  List<Object> get props => [message];
}
