import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class CashFailure extends Failure {
  final String errorMessage;

  CashFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
