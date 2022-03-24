import 'package:equatable/equatable.dart';

abstract class SaveQuranPageState extends Equatable {
  const SaveQuranPageState();

  @override
  List<Object> get props => [];
}

class SaveQuranPageInitial extends SaveQuranPageState {}

class SaveQuranPageLoading extends SaveQuranPageState {}

class SaveQuranPageScasses extends SaveQuranPageState {}

class SaveQuranPageError extends SaveQuranPageState {
  final String message;
  const SaveQuranPageError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}

class GetQuranPageLoading extends SaveQuranPageState {}

class GetQuranPageScasses extends SaveQuranPageState {}

class GetQuranPageError extends SaveQuranPageState {
  final String message;
  const GetQuranPageError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
